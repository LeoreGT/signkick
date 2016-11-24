class AddPhotoToInterpreter < ActiveRecord::Migration[5.0]
  def change
    add_column :interpreters, :photo, :string
  end
end
