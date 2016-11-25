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
    review = @booking.reviews.build(review_params)
    if review.save
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
    params.require(:review).permit(:content, :booking, :friendliness, :punctuality, :language_skill, :professionalism, :overall_performance)
  end

end
