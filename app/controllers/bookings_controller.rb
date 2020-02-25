class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    plant = Plant.find(params[:plant_id])
    today = Date.today
    bookings = plant.bookings.where("start_date >= ? OR end_date >= ?", today, today)

    render json: bookings
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save!
    redirect_to @booking.plant, notice: "Your booking has been created..."
  end

  private
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :price, :total, :plant_id)
    end
end
