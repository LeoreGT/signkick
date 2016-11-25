class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :booking, foreign_key: true
      t.integer :language_skill
      t.integer :friendliness
      t.integer :punctuality
      t.integer :professionalism
      t.integer :overall_performance
      t.text :content

      t.timestamps
    end
  end
end
