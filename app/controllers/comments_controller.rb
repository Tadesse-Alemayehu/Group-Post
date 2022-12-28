class CommentsController < ApplicationController
  before_action :set_comment, only: [:update, :destroy]
  def create
    respond_to do |format|
      if params[:comment_id]
        comment=Comment.find(params[:comment_id])
        new_comment=Comment.create(user: current_user, contents: comment, body: comment_params[:body])
          format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            comment, ShowCommentComponent.new(comment: comment).render_in(view_context))
        }
      else
        post=Post.find(params[:post_id])
        new_comment=Comment.create(user: current_user, post: post, body: comment_params[:body])
        format.turbo_stream {
          render turbo_stream: turbo_stream.prepend(
            comments, ShowCommentComponent.new(comment: new_comment).render_in(view_context))
        }
      end
      format.html { redirect_to user_path(current_user) }
    end
  end

  def update
  end

  def destroy

    @comment.destroy
    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.remove(@comment)
      }
      format.html { redirect_to user_path(current_user) }
    end
  end

  private
  def set_comment
    @comment=Comment.includes(:contents).find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:body)
  end
end
