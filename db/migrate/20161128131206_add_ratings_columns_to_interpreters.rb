class AddRatingsColumnsToInterpreters < ActiveRecord::Migration[5.0]
  def change
    add_column :interpreters, :overall_performance, :float
    add_column :interpreters, :friendliness, :float
    add_column :interpreters, :language_skill, :float
    add_column :interpreters, :punctuality, :float
    add_column :interpreters, :professionalism, :float
  end
end
