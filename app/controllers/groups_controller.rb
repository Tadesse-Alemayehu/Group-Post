class GroupsController < ApplicationController
  before_action :set_group, only: %i[ show edit update destroy ]

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(name: group_params[:name])
    @group.user=current_user
    current_user.join=(@group)
    respond_to do |format|
      if @group.save
        format.html { redirect_to user_path(@group), notice: "Group was successfully created." }
        # format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to user_path(@group), notice: "Group was successfully updated." }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url, notice: "Group was successfully destroyed." }
      format.json { head :no_content }
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
