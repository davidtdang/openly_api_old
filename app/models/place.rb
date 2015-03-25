class Place < ActiveRecord::Base

  def show
    response = Yelp.client.search('San Francisco', { term: params[:search] })


    render place_path

  end


end
