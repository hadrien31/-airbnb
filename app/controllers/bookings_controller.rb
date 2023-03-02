class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @adventure = Adventure.find(params[:adventure_id])
    @user = current_user
  end

  def create
    @user = current_user
    @adventure = Adventure.find(params[:adventure_id])
    @booking = Booking.new(booking_params)
    @booking.adventure = @adventure
    @booking.user = current_user
    if @booking.save
      redirect_to profil_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
