class PostsController < ApplicationController
  before_action :set_post, only: [:destroy, :update]
  before_action :param_filter, only: [:create]


  def update
  end

  def destroy
  end

  def create
  end
  private
  def set_post
    @post=Post.find(params[:id])
  end
  def param_filter
    params.require(:posts).permit(:title, :body, :user_id, :group_id)
  end
end
