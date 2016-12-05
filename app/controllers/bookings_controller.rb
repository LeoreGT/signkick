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
    # booking = Booking.new(
    # {
    #   deaf_user: DeafUser.find_by_user_id(current_user.id),
    #   interpreter: @interpreter,
    #   booking_date: booking_params[:booking_date],
    #   price: booking_params[:price]
    #   })
    booking = Booking.new(booking_params)
    booking.interpreter = @interpreter
    booking.deaf_user = DeafUser.find_by_user_id(current_user.id)
    if booking.save
      redirect_to interpreter_booking_path(@interpreter.id,booking.id)
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
    params.require(:booking).permit(:price, :location, :start_time, :end_time)
  end

  def find_interpreter
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
