class InterpretersController < ApplicationController

  def search
    @interpreters = Interpreter.all
  end

  def show
    @interpreter = Interpreter.find(params[:id])
  end

  def new
    @interpreter = Interpreter.new
  end

  def create
    interpreter = Interpreter.new(interpreter_params)
    interpreter.user = current_user
    interpreter.save
    redirect_to dashboard_path
  end

  def dashboard
    if current_user.is_interpreter
      @interpreter = Interpreter.find_by_user_id(current_user.id)
    else
      redirect_to root
    end
  end

  private

  def interpreter_params
    params.require(:interpreter).permit(:name, :bio, :location, :years_of_experience, :price)
  end

end
