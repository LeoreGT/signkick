class AddPhotoToDeafUser < ActiveRecord::Migration[5.0]
  def change
    add_column :deaf_users, :photo, :string
  end
end
