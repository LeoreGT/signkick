class PagesController < ApplicationController
  def home
    @interpreters = Interpreter.order(:overall_performance).limit(9)
  end

  def design
  end
end
