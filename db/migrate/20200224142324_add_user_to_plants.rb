class AddUserToPlants < ActiveRecord::Migration[5.2]
  def change
    add_reference :plants, :user, foreign_key: true
  end
end
