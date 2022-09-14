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

    if @ticket.save
      @ticket.price = @itinerary.price * @ticket.ticket_number
      @ticket.save
      redirect_to tickets_path
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
end
