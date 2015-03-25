class PlacesController < ApplicationController

  def index
    places = Place.all
    render json: places
  end

  def create
    places = Place.new(place_params)
    if place.save
      render json: place
    end
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    head :no_content
  end

  def update
    place = Place.find(params[:id])
    place.update(place_params)
    render json: place
  end

  def show
  end

  private
  def place
    params.require(:place).permit(:name)
  end

end
