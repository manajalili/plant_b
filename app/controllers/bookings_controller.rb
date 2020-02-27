class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all

  end

  def create
    @booking = Booking.new(booking_params)
    # Find the plant
    @plant = Plant.find(params[:plant_id])
    @booking.plant = @plant
    # Find the user
    @booking.user = current_user

    @booking.save!



    redirect_to @booking.plant, notice: "Your booking has been created..."
  end

  private
    def booking_params
      params.require(:booking).permit(:date)
    end
end
