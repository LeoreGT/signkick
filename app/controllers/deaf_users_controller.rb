class DeafUsersController < ApplicationController

  before_action :find_deaf_user, only: [:edit, :update, :destroy]

  def new
    @deaf_user = DeafUser.new
  end

  def create
    @deaf_user = DeafUser.new(deaf_user_params)
    @deaf_user.user = current_user
    if @deaf_user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @deaf_user.update(deaf_user_params)
    redirect_to interpreters_path
  end

  def destroy
    @deaf_user.destroy
  end

  def profile
    if current_user.is_interpreter
      redirect_to root_path
      # @booking.interpreter = Booking.joins(:interpreter).where("interpreter.id" => @interpreter.name)

    else
      @deaf_user = DeafUser.find_by(user_id: current_user.id)
      @bookings = @deaf_user.bookings
      @past_bookings = []
      @upcoming_bookings = []
      @bookings.each do |booking|
        Time.now > (booking.booking_date + booking.duration) ? @past_bookings << booking : @upcoming_bookings << booking
      end
    end
  end

  private

  def find_deaf_user
    @deaf_user = DeafUser.find(params[:id])
  end

  def deaf_user_params
    params.require(:deaf_user).permit(:name, :location, :photo, :photo_cache, languages:[])
  end

end
