class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :first_name, :name
    remove_column :users, :last_name, :string
  end
end
