class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  def join
    @group = Group.find(params[:group_id])
    join=UserGroup.new(user: current_user, group: @group)
    respond_to do |format|
      if join.save
        format.html { redirect_to user_path(@group) }
        format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          @group, GroupComponent.new(group: @group).render_in(view_context))
      }
      else
        format.html { redirect_to user_path(current_user)}
      end
    end
  end
    def leave
    @group = Group.find(params[:group_id])
    join=UserGroup.find_by(user: current_user, group: @group)
    respond_to do |format|
      if join.destroy
        format.html { redirect_to user_path(@group) }
        format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          @group, GroupComponent.new(group: @group).render_in(view_context))
      }
      else
        format.html { redirect_to user_path(current_user)}
      end
    end
  end

  def new
    p request.original_url
     respond_to do |format|
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          "new_group", NewGroupComponent.new(group: Group.new).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user)}
      end
  end

  def edit
     respond_to do |format|
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          @group, NewGroupComponent.new(group: @group).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user)}
      end
  end

  def create
    group = Group.new(user: current_user,name: group_params[:name])
    respond_to do |format|
      if group.save!
        UserGroup.create!(user: current_user, group: group)
      end
        format.html { redirect_to user_path(current_user) }
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          'groups', GroupComponent.new(group: group).render_in(view_context))
      }
    end
  end
  def update
    respond_to do |format|
      if @group.update(user: current_user, name: group_params[:name])
        # format.html { redirect_to user_path(@group) }
        format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          @group, GroupComponent.new(group: @group).render_in(view_context))
      }
      else
        format.html { redirect_to user_path(current_user)}
      end
    end
  end

  def destroy
    @group.user_groups.destroy_all
    @group.posts.destroy_all
    @group.destroy

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.remove(@group)
      }
      format.html { redirect_to user_path(current_user)}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def group_params
      param=params.require(:group).permit(:name)
    end
end
