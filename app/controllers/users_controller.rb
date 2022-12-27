class UsersController < ApplicationController
  before_action :authenticate_user!, :prepare_user
  def show
  end

  private
  def prepare_user
    Ability.new(current_user)
    if !params[:filter]
      @groups = Group.all
    elsif params[:filter]=='mine'
      @groups = current_user.groups
    else params[:filter]=='member'
      @groups=current_user.joined
    end
  end
end
