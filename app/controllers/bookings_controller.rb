class BookingsController < ApplicationController

  before_action :find_booking, only: %i[show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.duck = @duck
    if @booking.save
      redirect_to ducks_path(@duck)
    else
      render :new
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :duck_id)
  end

end
