class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @adventure = Adventure.find(params[:adventure_id])
    @booking = Booking.new(booking_params)
    @booking.adventure = @adventure
    @booking.user = current_user
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end


end
