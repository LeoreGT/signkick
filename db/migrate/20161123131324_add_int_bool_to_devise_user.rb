class AddIntBoolToDeviseUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :interpreter, :bool
  end
end
