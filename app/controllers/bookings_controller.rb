class BookingsController < ApplicationController

  before_action :find_interpreter, only: [:show, :create, :edit, :update]
  before_action :set_booking, only: [:show, :edit, :destroy, :update]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = @interpreter.booking.build(booking_params)
    if booking.save
      redirect_to booking_path(booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(booking)
  end

private

  def booking_params
    params.require(:booking).permit(:date, :price, :deaf_user, :interpreter)
  end

  def find_interpreter
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
end
