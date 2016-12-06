class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :design]

  def home
    @interpreters = Interpreter.order(:overall_performance).limit(9)
  end

  def design
  end
end
