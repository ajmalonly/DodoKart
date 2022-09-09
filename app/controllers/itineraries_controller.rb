class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_itinerary, only: [:show]

  def index
    if params[:query].present?
      @itineraries = Itinerary.where(origin: params[:query])
    else
      @itineraries = Itinerary.all
    end
    @stations = Station.all
    @markers = @stations.geocoded.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude
      }
    end
  end

  def show
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
