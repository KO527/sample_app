class ChangePreferencesTypeForUser < ActiveRecord::Migration
  def change
  	change_column :users, :preferences, :string
  end
end
