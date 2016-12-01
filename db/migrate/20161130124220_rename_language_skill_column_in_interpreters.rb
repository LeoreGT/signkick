class RenameLanguageSkillColumnInInterpreters < ActiveRecord::Migration[5.0]
  def change
    rename_column :interpreters, :language_skill, :language_ability
  end
end
