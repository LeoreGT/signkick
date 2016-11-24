class InterpretersController < ApplicationController

  def search
    @interpreters = Interpreter.all
  end

  def show
    @interpreter = Interpreter.find(params[:id])
  end

  def new
    @interpreter = Interpreter.new()
  end

  def create
    @interpreter = Interpreter.new(interpreter_params)
    if @interpreter.save
      redirect_to dashboard_interpreter_path(@interpreter)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @interpreter.update(interpreter_params)
      redirect_to dashboard_interpreter_path(@interpreter)
    else
      render :new
    end
  end

  def dashboard
    if current_user.interpreter
      @interpreter = current_user.interpreter
    else
      redirect_to root
    end
  end


private

  def interpreter_params
    params.require(:interpreter).permit(:name, :bio, :price, :years_of_experience, :tag_id, :language_id, :location)
  end
end
