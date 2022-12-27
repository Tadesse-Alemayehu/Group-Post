class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  def edit
  end

  def create
    @group = Group.new(name: group_params[:name])
    @group.user=current_user
    current_user.join=(@group)
    respond_to do |format|
      if @group.save
        format.html { redirect_to user_path(@group) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @group.update(user: current_user, name: group_params[:name])
        format.html { redirect_to user_path(@group) }
        format.turbo_stream {
        render turbo_stream: turbo_stream.replace(
          @group, GroupComponent.new(group: @group).render_in(view_context))
      }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group.user_groups.destroy_all
    @group.destroy

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.remove(@group)
      }
      format.html { redirect_to user_group_path, notice: "Group was successfully destroyed." }
      # format.json { head :no_content }
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
