class PlantsController < ApplicationController
  #GET /plants
  def index
    plants=Plant.all
    render json: plants, status: :ok
  end
  #GET /plants/:id
  def show
    plants=Plant.find_by(id:params[:id])
    if plants
      render json: plants, status: :ok
  end
  #POST /plants
  def create
    plants=Plant.create(plants_params)
    render json: plants, status: :created
  end

  def plants_params
    params.permit(:name,:image,:price)
  end
end
end
