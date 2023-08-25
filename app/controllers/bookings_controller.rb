class BookingsController < ApplicationController

  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @pal = Pal.find(params[:pal_id])
    @booking = Booking.new
  end

  def create
    @pal = Pal.find(params[:pal_id])
    @booking = Booking.new(booking_params)
    @booking.pal = @pal
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking has been deleted!'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :comments)
  end

end
