class AddLocationToVideo < ActiveRecord::Migration
  def change
  	add_column :videos, :latitude, :decimal, :precision => 15, :scale => 10, default: 25.7516
  	add_column :videos, :longitude, :decimal, :precision => 15, :scale => 10, default: -80.1670
  end
end
