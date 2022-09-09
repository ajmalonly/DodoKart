class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def itineraries
    if params[:origin].present? && params[:destination].present?
      @itineraries = Itinerary.where("origin ILIKE ? AND destination ILIKE ?", "%#{params[:origin]}%", "%#{params[:destination]}%")
    elsif params[:orgin].present?
      @itineraries = Itinerary.where("origin ILIKE?", "%#{params[:origin]}%")
    elsif params[:destination].present?
      @itineraries = Itinerary.where("destination ILIKE ?", "%#{params[:destinaton]}%")
    else
      @itineraries = Itinerary.all
    end
  end
end
