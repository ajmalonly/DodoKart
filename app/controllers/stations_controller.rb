class StationsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_station, only: [:show]

  def index
    @stations = Station.all
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude,
        info_window: render_to_string(partial: "info_window", locals: { station: station }),
        image_url: helpers.asset_path("Dodokart.JPG")
      }
    end
  end
end
