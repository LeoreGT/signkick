class RenameLanguageSkillColumnInReviews < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :language_skill, :language_ability
  end
end
