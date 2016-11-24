class ReviewsController < ApplicationController

  before_action :find_interpreter, only: [:index, :create]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = @interpreter.review.build
  end

  def create
    review = @interpreter.review.build(review_params)
    if review.save
      redirect_to review_path(review)
    else
      render :new
    end
  end

  private

  def find_interpreter
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def review_params
    params.require(:review).permit(:content, :deaf_user, :interpreter, :friendliness, :punctuality,:language_skill, :professionalist, :overall_experience)
  end

end
