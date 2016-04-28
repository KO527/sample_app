class AddPreferencesToUser < ActiveRecord::Migration
  def change
    add_column :users, :Preferences, :text
  end
end
