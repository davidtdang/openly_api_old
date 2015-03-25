class PlacesController < ApplicationController

    def show
      @client = GooglePlaces::Client.new(ENV["AUTH_KEY"])

      spots = @client.spots(37.787453299999996, -122.3966085, :type => 'movie_theater')


      @spots = spots.map do |spot|
        {
          name: spot.name,
          opening_hours: spot.opening_hours,
        }
      end

    end


  # def index
  #   places = Place.all
  #   render json: places
  # end
  #
  # def create
  #   places = Place.new(place_params)
  #   if place.save
  #     render json: place
  #   end
  # end
  #
  # def destroy
  #   place = Place.find(params[:id])
  #   place.destroy
  #   head :no_content
  # end
  #
  # def update
  #   place = Place.find(params[:id])
  #   place.update(place_params)
  #   render json: place
  # end
  #
  # def show
  # end
  #
  # private
  # def place
  #   params.require(:place).permit(:name)
  # end

end
