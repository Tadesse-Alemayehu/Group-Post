class UsersController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!
  def index
  end
  def show
    Ability.new(current_user)
    if !params[:filter]
    @groups = Group.all
    elsif params[:filter]=='mine'
    @groups = Group.where(user: current_user)
    else params[:filter]=='member'
    end
  end
  def private initialize_user

  end
end
