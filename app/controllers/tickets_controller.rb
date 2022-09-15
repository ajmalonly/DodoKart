class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :set_itinerary, only: [:new, :create]

  def index
    @tickets = current_user.tickets.reverse
  end

  def show
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.itinerary = @itinerary
    @ticket.user = current_user
    @ticket.price = @itinerary.price * @ticket.ticket_number

    if @ticket.save
      redirect_to ticket_path(@ticket)
    else
      render "itineraries/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @tickets.update(ticket_params)
    redirect_to tickets_path
  end

  def destroy
    @ticket.destroy
    redirect_to tickets_path, status: :see_other
  end

  def map
    @ticket = Ticket.find(params[:ticket_id])
    @itinerary = Itinerary.find(@ticket.itinerary.id)
    @origin = Station.find_by(name: @itinerary.origin)
    @destination = Station.find_by(name: @itinerary.destination)
    @stations = Station.all


    indexes = get_index(@origin, @destination)
    @filtered_stations = @stations[indexes[0]..indexes[1]]
    @coordinates = get_coordinates(@filtered_stations)
    @markers = set_markers(@filtered_stations)
    @origin_coordinates = [@origin.longitude, @origin.latitude]
  end

  private

  def ticket_params
    params.require(:ticket).permit(:start_time, :price, :qr_code, :ticket_number)
  end

  def set_ticket
    @ticket = Ticket.find(params[:id])
  end

  def set_itinerary
    @itinerary = Itinerary.find(params[:itinerary_id])
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
        info_window: render_to_string(partial: "itineraries/info_window", locals: { station: station }),
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
