class PagesController < ApplicationController
  def home
    @interpreter = Interpreter.new
  end

  def design
  end
end
