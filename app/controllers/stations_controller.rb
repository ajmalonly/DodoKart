class StationsController < ApplicationController
  def index
    @stations = Station.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end
end
