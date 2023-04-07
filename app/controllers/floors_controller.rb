class FloorsController < ApplicationController
  after_action :verify_authorized

  def show
    @building = Building.find(params[:building_id])
    @floor = Floor.find(params[:id])
    authorize(@floor)
  end

  def new
    @building = Building.find(params[:building_id])
    @floor = @building.floors.new
    authorize(@floor)
  end

  def create
    @building = Building.find(params[:building_id])
    @floor = @building.floors.new(floor_params)
    authorize(@floor)
    if @floor.save
      redirect_to @building, notice: 'Successfully created a floor.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @building = Building.find(params[:building_id])
    @floor = Floor.find(params[:id])
    authorize(@floor)
  end

  def update
    @building = Building.find(params[:building_id])
    @floor = Floor.find(params[:id])
    authorize(@floor)
    if @floor.update(floor_params)
      redirect_to @building, notice: 'Successfully updated a floor.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @building = Building.find(params[:building_id])
    @floor = Floor.find(params[:id])
    authorize(@floor)
    @floor.destroy
    redirect_to building_floors_path(@building), notice: 'Successfully destroyed a floor.'
  end

  private

  def floor_params
    params.require(:floor).permit(:name, :position)
  end
end
