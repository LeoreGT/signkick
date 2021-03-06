class InterpretersController < ApplicationController


  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:date].empty?
      @interpreters = Interpreter.joins(language_skills: :language).where('languages.name' => params[:language]).where('interpreters.location' => params[:location])
    else
      @interpreters = Interpreter.joins(language_skills: :language).where('languages.name' => params[:language]).where('interpreters.location' => params[:location])
    end
# add @interpreters_any_date when we have availability function
if @interpreters.empty?
  flash[:no_result] = "Sorry, no results for your search"
  redirect_to root_path
else
  render :index
end
end

def show
  @interpreter = Interpreter.find(params[:id])
  @booking = Booking.new
  @date = Date.today
end

def new
  @interpreter = Interpreter.new()
end

def create
  @interpreter = Interpreter.new(interpreter_params)
  @interpreter.user = current_user
  if @interpreter.save
    redirect_to new_interpreter_language_skill_path(@interpreter)
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
