class BookingsController < ApplicationController

  before_action :find_interpreter, only: [:show, :create, :edit, :update]
  before_action :set_booking, only: [:show, :edit, :destroy, :update]

  def index
    @bookings = Booking.all
  end

  def show
    # @interpreter_name = Booking.joins(interpreter_id: :interpreter).where('interpreter.name' => [:interpreter])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.interpreter = @interpreter
    update_booking_date_time
    @booking.deaf_user = DeafUser.find_by_user_id(current_user.id)
    if @booking.save
      redirect_to profile_path
    else
      # render 'bookings/signin'
      redirect_to interpreter_path(@interpreter)
    end
  end

  def destroy
    @booking.destroy
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to interpreter_booking_path(@interpreter.id,@booking.id)
  end

private

  def booking_params
    params.permit(:price, :location, :booking_date, :duration)
  end

  def start_time_params
     params.require(:start_time).permit("Start time(4i)", "Start time(5i)")
  end

  def find_interpreter
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def update_booking_date_time
    @booking.booking_date = @booking.booking_date.change(hour:start_time_params["Start time(4i)"], min: start_time_params["Start time(5i)"])
  end

end
