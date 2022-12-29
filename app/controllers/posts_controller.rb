class PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :update, :show]
  before_action :param_filter, only: [:create]

  def show
    respond_to do |format|
        format.turbo_stream {
        render turbo_stream: turbo_stream.update(
          'active-content', ShowPostComponent.new(post: @post).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA" }
      end
  end

  def update
    # server side authorization
    unless can? :update, @post || current_user.is_admin?(@post.group)
      redirect_to user_path(current_user), notice: "You are not authorized to update this post"
      return
    end
    respond_to do |format|
      if @post.update(param_filter)
        format.turbo_stream {
        render turbo_stream: turbo_stream.update(
          'active-content', ShowPostComponent.new(post: @post).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA" }
      end
    end
  end

  def destroy
    # server side authorization
    unless can? :update, @post || current_user.is_admin?(@post.group)
      redirect_to user_path(current_user), notice: "You are not authorized to delete this post"
      return
    end
    @post.comments.destroy_all
    @post.destroy
    redirect_to user_path(current_user)
  end

  def create
        post = Post.new(title: param_filter[:title],body: param_filter[:body],user_id: params[:user_id],
          group_id: params[:group_id])
    respond_to do |format|
      if post.save!
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          'posts', PostComponent.new(post: post).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA" }
      end
    end
  end
  private
  def set_post
    @post=Post.includes(:user, :group).find(params[:id])
  end
  def param_filter
    params.require(:post).permit(:title, :body)
  end
end
