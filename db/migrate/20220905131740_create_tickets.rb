class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :itinerary, null: false, foreign_key: true
      t.integer :price
      t.datetime :start_time
      t.string :qr_code

      t.timestamps
    end
  end
end
