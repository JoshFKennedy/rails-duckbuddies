class BookingsController < ApplicationController

  before_action :find_booking, only: %i[show]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @duck = Duck.find(params[:duck_id])

  end

  def create
    @booking = Booking.new(booking_params)
    @duck = Duck.find(params[:duck_id])
    @booking.duck = @duck
    @booking.user = current_user
    if @booking.save
      redirect_to duck_path(@duck)
    else
      render :new
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
