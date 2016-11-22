class AddPriceBioNameYearsOfExperienceLocationToInterpreters < ActiveRecord::Migration[5.0]
  def change
    add_column :interpreters, :price, :integer
    add_column :interpreters, :bio, :string
    add_column :interpreters, :name, :string
    add_column :interpreters, :years_of_experience, :integer
    add_column :interpreters, :location, :string
  end
end
