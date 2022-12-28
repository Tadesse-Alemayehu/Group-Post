class UsersController < ApplicationController
  before_action :authenticate_user!, :prepare_user

  def show
    if !params[:active] || params[:active] == "groups"
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
      format.html
      end
    else
      @posts=Post.where(group_id: params[:group_id])
      respond_to do |format|
          format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            'active-content', partial: "posts/index", locals: {groups: @groups})
        }
      format.html
      end
  end
  end

  private
  def prepare_user
    Ability.new(current_user)
  end
end
