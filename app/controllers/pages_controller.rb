class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :design]

  def home
    @interpreters = Interpreter.order(overall_performance: :DESC).limit(9)
  end

  def design
  end
end
