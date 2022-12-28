class UsersController < ApplicationController
  before_action :authenticate_user!, :prepare_user

  def posts
    @group=Group.find(params[:group_id])
          @posts=Post.includes(:user, :group, :comments).where(group_id: params[:group_id])
      respond_to do |format|
          format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            'active-content', partial: "posts/index", locals: {groups: @groups})
        }
          format.html { redirect_to user_path(current_user)}
      end
  end
  def groups
        if !params[:filter]
        @groups = Group.includes(:user_groups)
      elsif params[:filter]=='mine'
        @groups = current_user.groups
      else params[:filter]=='member'
        @groups=current_user.joined
      end
      respond_to do |format|
          format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            'active-content', partial: "groups/index", locals: {groups: @groups})
        }
          format.html { redirect_to user_path(current_user)}
      end
  end

  def show
        @groups = Group.includes(:user_groups)
  end
  private
  def prepare_user
    Ability.new(current_user)
  end
end
