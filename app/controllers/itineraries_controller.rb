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
    @markers = set_markers(@stations)
    @coordinates = get_coordinates(@stations)
  end

  def show
    @origin = Station.find_by(name: @itinerary.origin)
    @destination = Station.find_by(name: @itinerary.destination)
    @stations = Station.all


    indexes = get_index(@origin, @destination)
    @filtered_stations = @stations[indexes[0]..indexes[1]]
    @coordinates = get_coordinates(@filtered_stations)
    @markers = set_markers(@filtered_stations)
    @ticket = Ticket.new
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def get_index(origin, destination)
    origin_index = @stations.index(origin)
    destination_index = @stations.index(destination)

    if origin_index < destination_index
      return [origin_index, destination_index]
    else
      return [destination_index, origin_index]
    end
  end

  def set_markers(stations)
    stations.map do |station|
      {
        lat: station.latitude,
        lng: station.longitude,
        info_window: render_to_string(partial: "info_window", locals: { station: station }),
        image_url: helpers.asset_url("Train_icon.svg")
      }
    end
  end

  def get_coordinates(stations)
    coords = []
    stations.each { |station| coords << [station.longitude, station.latitude] }
    coords
  end
end
