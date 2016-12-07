class ReviewsController < ApplicationController

  before_action :find_interpreter, only: [:index, :create, :new, :create]
  before_action :find_booking, only: [:index, :create, :new, :create]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.overall_performance = calculate_overall_performance
    if @review.save
      @interpreter.update_averages
      @interpreter.save
      redirect_to interpreter_path(@interpreter)
    else
      render :new
    end
  end

  private

  def find_interpreter
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content, :booking, :friendliness, :punctuality, :language_ability, :professionalism, :overall_performance)
  end

  def calculate_overall_performance
    (@review.friendliness + @review.professionalism + @review.punctuality + @review.language_ability) / 4.0
  end

end
