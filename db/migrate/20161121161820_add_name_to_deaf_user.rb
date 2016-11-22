class AddNameToDeafUser < ActiveRecord::Migration[5.0]
  def change
    add_column :deaf_users, :name, :string
  end
end
