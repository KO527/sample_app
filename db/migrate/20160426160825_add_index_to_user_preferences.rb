class AddIndexToUserPreferences < ActiveRecord::Migration
  def change
  	add_index :users :Preferences, unique: true
  end
end
