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
    if @booking.save
      redirect_to @booking.plant, notice: "Your booking has been created..."
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:plant_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    raise

    redirect_to plant_path(@booking.plant)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to bookings_path
  end

  private
    def booking_params
      params.require(:booking).permit(:date)
    end
end
