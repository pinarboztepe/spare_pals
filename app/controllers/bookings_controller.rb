class BookingsController < ApplicationController

  def new
    @pal = Pal.find(params[:pal_id])
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pal = @pals
    @booking.save
  end

  private

  def booking_params
  params.require(:booking).permit(:name, :user_id)
  end

end
