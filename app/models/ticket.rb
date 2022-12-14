class Ticket < ApplicationRecord
  belongs_to :itinerary
  belongs_to :user
  validates :ticket_number, :start_time, presence: true
end
