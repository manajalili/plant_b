class AddCoordinatesToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :latitude, :float
    add_column :plants, :longitude, :float
  end
end
