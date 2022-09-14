class AddImageUrlToStations < ActiveRecord::Migration[7.0]
  def change
    add_column :stations, :image_url, :string
  end
end
