class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :location, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
