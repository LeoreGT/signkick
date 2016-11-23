class CreateInterpreterTags < ActiveRecord::Migration[5.0]
  def change
    create_table :interpreter_tags do |t|
      t.references :tag, foreign_key: true
      t.references :interpreter, foreign_key: true

      t.timestamps
    end
  end
end
