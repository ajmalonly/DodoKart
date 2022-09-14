class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def info
  end

  def profile
  end

  def itineraries
    @stations = Station.all
    @station_options = @stations.map{ |s| [ s.name ] }
    if params[:origin].present? && params[:destination].present?
      if params[:origin] == params[:destination]
        @i = Itinerary.new
        @i.errors.add :origin, "Can't be the same as destination"
        render "itineraries/index", status: :unprocessable_entity

      else
      @itineraries = Itinerary.where("origin ILIKE ? AND destination ILIKE ?", "%#{params[:origin]}%", "%#{params[:destination]}%")
    end

  #   elsif params[:orgin].present?
  #     @itineraries = Itinerary.where("origin ILIKE?", "%#{params[:origin]}%")
  #   elsif params[:destination].present?
  #     @itineraries = Itinerary.where("destination ILIKE ?", "%#{params[:destinaton]}%")
  #   #   @itineraries.each do |i|
  #   #   end
  #   #   render "itinaries", status: :unprocessable_entity
  #   else
      # @itineraries = Itinerary.all
    end
  end
end
