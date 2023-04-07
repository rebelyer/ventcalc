class BuildingsController < ApplicationController
  after_action :verify_authorized, except: :index
  after_action :verify_policy_scoped, only: :index

  def index
    @buildings = policy_scope(Building)
  end

  def show
    @building = Building.find(params[:id])
    authorize(@building)
  end

  def new
    @building = Building.new
    authorize(@building)
  end

  def create
    @building = Building.new(building_params)
    @building.user = current_user
    authorize(@building)

    if @building.save
      redirect_to buildings_path, notice: 'Successfully created a building.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @building = Building.find(params[:id])
    authorize(@building)
  end

  def update
    @building = Building.find(params[:id])
    authorize(@building)

    if @building.update(building_params)
      redirect_to buildings_path, notice: 'Successfully updated a building.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @building = Building.find(params[:id])
    authorize(@building)
    @building.destroy
    redirect_to buildings_path
  end

  private

  def building_params
    params.require(:building).permit(:address, :building_area, :investor_name, :residents_number)
  end
end
