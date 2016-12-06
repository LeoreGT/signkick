class LanguageSkillsController < ApplicationController

  def new
    if current_user.is_interpreter?
      @language_skill = LanguageSkill.new
      @interpreter = Interpreter.find(params[:interpreter_id])
      @languages = @interpreter.languages
    else
      @language_skill = LanguageSkill.new
      @deaf_user = DeafUser.find(params[:deaf_user_id])
      @languages = @deaf_user.languages
    end
  end

  def create
    if current_user.is_interpreter?
      @language_skill = LanguageSkill.new(language_skills_params)
      @interpreter = Interpreter.find(params[:interpreter_id])
      @language_skill.owner = @interpreter
      @language = Language.find(params[:language_skill][:language_id])
      if @language_skill.save
        respond_to do |format|
          format.html { redirect_to dashboard_path(@interpreter) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { redirect_to 'interpreters/dashboard' }
          format.js  # <-- idem
        end
      end
    else
      @language_skill = LanguageSkill.new(language_skills_params)
      @deaf_user = DeafUser.find(params[:deaf_user_id])
      @language_skill.owner = @deaf_user
      @language = Language.find(params[:language_skill][:language_id])
      if @language_skill.save
        respond_to do |format|
          format.html { redirect_to dashboard_path(@deaf_user) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          format.html { redirect_to 'deaf_users/profile' }
          format.js  # <-- idem
        end
      end
    end
  end


  def destroy
    if current_user.is_interpreter?
      @language_skill = LanguageSkill.find(params[:id])
      @interpreter = Interpreter.find(params[:interpreter_id])
      @language_skill.destroy
      respond_to do |format|
        format.html { redirect_to new_interpreter_language_skill_path(@interpreter) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      @language_skill = LanguageSkill.find(params[:id])
      @deaf_user = DeafUser.find(params[:deaf_user_id])
      @language_skill.destroy
      respond_to do |format|
        format.html { redirect_to new_deaf_user_language_skill_path(@deaf_user) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    end
  end


  private

  def language_skills_params
    params.require(:language_skill).permit(:interpreter_id, :deaf_user_id, :language_id)
  end

end
