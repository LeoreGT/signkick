class AddLocationToDeafUser < ActiveRecord::Migration[5.0]
  def change
    add_column :deaf_users, :location, :string
  end
end
