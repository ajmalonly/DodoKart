class AddTicketNumberToTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :tickets, :ticket_number, :integer
  end
end
