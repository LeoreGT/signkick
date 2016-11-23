class CreateLanguageSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :language_skills do |t|
      t.references :language, foreign_key: true
      t.string :level
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end
end
