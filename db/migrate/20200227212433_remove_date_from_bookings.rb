class RemoveDateFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :date, :date
  end
end
