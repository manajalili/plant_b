class AddPlantToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :plant, foreign_key: true
  end
end
