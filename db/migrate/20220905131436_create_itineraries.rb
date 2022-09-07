class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.integer :price
      t.integer :duration
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
