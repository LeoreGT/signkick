class LanguageSkillsController < ApplicationController

  def new
    @language_skill = LanguageSkill.new
    @interpreter = Interpreter.find(params[:interpreter_id])
  end

  def create
    @language_skill = LanguageSkill.new(language_skills_params)
    @interpreter = Interpreter.find(params[:interpreter_id])
    @language_skill.owner = @interpreter
    @language = @interpreter.languages.first

    if @language_skill.save
      respond_to do |format|
        format.html { redirect_to dashboard_path(@interpreter) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'interpreters/dashboard' }
        format.js  # <-- idem
      end
    end
  end

private

  def language_skills_params
    params.require(:language_skill).permit(:interpreter_id, :language_id)
  end

end
