class ItinerariesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_itinerary, only: [:show, :edit, :create, :update]

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

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    @itinerary.user = current_user
    if @itinerary.save
      redirect_to itinerary_path(itinerary)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @itinerary.update(itinerary_params)
    redirect_to itinerary_path(@itinerary)
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:origin, :destination, :price, :duration)
  end
end
