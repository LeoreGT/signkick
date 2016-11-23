class LanguagesController < ApplicationController

  def index
    @languages = Language.all
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    @language.save
  end

private

  def language_params
    params.require(:language).permit(:name)
  end

end
