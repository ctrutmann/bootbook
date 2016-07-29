class GeocodeController < ApplicationController
  def geocode
    if request.xhr?
      baseURL = "https://maps.googleapis.com/maps/api/geocode/json?address="
      location_string = URI.escape(params[:locationString])
      second_part = "&key="
      google_secret_key = ENV['GOOGLE_SECRET_KEY']

      queryURL = baseURL + location_string + second_part + google_secret_key
      render :json => { :response => HTTParty.get(queryURL)}
    end
  end
end
