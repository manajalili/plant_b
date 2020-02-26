class AddAddressToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :address, :string
  end
end
