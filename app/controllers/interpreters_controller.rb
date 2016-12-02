class InterpretersController < ApplicationController

  def index
    @interpreters = Interpreter.all
  end

  def show
    @interpreter = Interpreter.find(params[:id])
    @booking = Booking.new
  end

  def new
    @interpreter = Interpreter.new()
  end

  def create
    interpreter = Interpreter.new(interpreter_params)
    interpreter.user = current_user
    if interpreter.save
      redirect_to new_interpreter_language_skill_path(interpreter)
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @interpreter.update(interpreter_params)
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def dashboard
    if current_user.is_interpreter
      @interpreter = Interpreter.find_by_user_id(current_user.id)
    else
      redirect_to root_path
    end
    @date = Date.today
  end


  private

  def interpreter_params
    params.require(:interpreter).permit(:name, :bio, :location, :years_of_experience, :price, :photo, :photo_cache, languages:[])
  end


end
