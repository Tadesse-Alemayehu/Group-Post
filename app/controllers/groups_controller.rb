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
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
      end
    end
  end

    def leave
      if params[:member_id]
        # only an admin of the group can remove a member
        group = Group.find(params[:group_id])
        member=User.find(params[:member_id])
        if can? :update, group
          join=UserGroup.find_by(user: member, group: group)
          join.destroy
          respond_to do |format|
            format.turbo_stream {
              render turbo_stream: turbo_stream.remove(member)
            }
          end
        end
            return
      end
      #everyone can leave a group they are a member of
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
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
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
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
      end
  end

  def edit
     respond_to do |format|
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          @group, NewGroupComponent.new(group: @group).render_in(view_context))
      }
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
      end
  end

  def create
    group = Group.new(user: current_user,name: group_params[:name])
    respond_to do |format|
      if group.save!
        UserGroup.create!(user: current_user, group: group)
      end
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA" }
        format.turbo_stream {
        render turbo_stream: turbo_stream.prepend(
          'groups', GroupComponent.new(group: group).render_in(view_context))
      }
    end
  end
  def update
    # server side authorization
    unless current_user.is_admin?(@group)
      redirect_to user_path(current_user), notice: "You are not authorized to update this group"
      return
    end
    respond_to do |format|
      if @group.update(user: current_user, name: group_params[:name])
        format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          @group, GroupComponent.new(group: @group).render_in(view_context))
      }
      else
        format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
      end
    end
  end

  def destroy
    # server side authorization
    unless current_user.is_admin?(@group)
      redirect_to user_path(current_user), notice: "You are not authorized to delete this group"
      return
    end
    @group.user_groups.destroy_all
    @group.posts.destroy_all
    @group.destroy

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.remove(@group)
      }
      format.html { redirect_to user_path(current_user), notice: "Server is expecting turbo streams hence a SPA"}
    end
  end

  private

    def set_group
      @group = Group.find(params[:id])
    end


    def group_params
      param=params.require(:group).permit(:name)
    end
end
