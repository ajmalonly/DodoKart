class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def info
  end

  def profile
  end

  def itineraries
    cond1 = params[:origin].present?
    cond2 = params[:destination].present?
    if cond1 && cond2
      @itineraries = Itinerary.where("origin ILIKE ? AND destination ILIKE ?", "%#{params[:origin]}%", "%#{params[:destination]}%")
      redirect_to itinerary_path(@itineraries[0]) if @itineraries.size == 1
    elsif cond2
      @itineraries = Itinerary.where("destination ILIKE ?", "%#{params[:destination]}%")
    elsif cond1
      @itineraries = Itinerary.where("origin ILIKE ?", "%#{params[:origin]}%")
    else
      @itineraries = Itinerary.all
    end


  end
end
