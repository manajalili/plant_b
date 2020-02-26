class AddPriceToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :price, :integer
  end
end
