class AddPreferencesToUser < ActiveRecord::Migration
def up
   add_column :users, :preferences, :string
end
def down
   add_column :users, :preferences, :text	
end
end
