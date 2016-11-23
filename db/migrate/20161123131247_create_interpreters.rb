class CreateInterpreters < ActiveRecord::Migration[5.0]
  def change
    create_table :interpreters do |t|
      t.string :name
      t.text :bio
      t.integer :price
      t.string :location
      t.integer :years_of_experience
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
