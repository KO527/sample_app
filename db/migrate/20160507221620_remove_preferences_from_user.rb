class RemovePreferencesFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :Preferences, :text
  end
end
