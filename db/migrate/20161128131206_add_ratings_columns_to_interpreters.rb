class AddRatingsColumnsToInterpreters < ActiveRecord::Migration[5.0]
  def change
    add_column :interpreters, :overall_performance, :float, default: 0
    add_column :interpreters, :friendliness, :float, default: 0
    add_column :interpreters, :language_skill, :float, default: 0
    add_column :interpreters, :punctuality, :float, default: 0
    add_column :interpreters, :professionalism, :float, default: 0
  end
end
