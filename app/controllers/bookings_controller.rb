class BookingsController < ApplicationController

  def new
    @bookings = Booking.new
  end

  def create
    # @booking = Booking.new(booking_params)
    # @booking.pal =
    # @
  end

  # private

  # def booking_params
  # params.require(:booking).permit(:name, :user_id)

end
