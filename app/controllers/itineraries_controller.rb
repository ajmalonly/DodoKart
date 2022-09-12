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
        lng: station.longitude,
        info_window: render_to_string(partial: "info_window", locals: { station: station }),
        image_url: helpers.asset_url("Train_icon.svg")
      }
    end
  end

  def show
    @ticket = Ticket.new
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end
end
