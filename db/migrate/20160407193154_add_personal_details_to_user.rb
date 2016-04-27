class AddPersonalDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer
    add_index :users, :role
    add_column :users, :first_name, :string
    add_index :users, :first_name
    add_column :users, :last_name, :string
    add_index :users, :last_name
    add_column :users, :phone_number, :string
    add_index :users, :phone_number
    add_column :users, :gender, :integer
    add_column :users, :address, :string
    add_column :users, :company_name, :string
    add_index :users, :company_name
    add_column :users, :company_details, :text
  end
end
