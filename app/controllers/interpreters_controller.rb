class InterpretersController < ApplicationController

  def search
    @interpreters = Interpreter.all
  end

  def show
    @interpreter = Interpreter.find(params[:id])
  end

end
