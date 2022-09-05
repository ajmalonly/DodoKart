class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
end
