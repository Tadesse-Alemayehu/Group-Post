class CommentController < ApplicationController
  def create

  end

  def destroy
  end
  private
  def set_comment
    @comment=Comment.includes(:user, :post).find(params[:id])

  end
end
