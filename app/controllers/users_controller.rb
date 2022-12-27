class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end
  def show
    if params[:filter]
    @groups = Group.all
    elsif params[:filter]=='mine'
    @groups = Group.where(user: current_user)
    end
  end
end
