class CreateLanguageSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :language_skills do |t|
      t.string :level
      t.references :language, foreign_key: true
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end
end
