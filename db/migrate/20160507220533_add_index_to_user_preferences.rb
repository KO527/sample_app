
#Preference has to be unique because the resources allocated to specific locations on map will determine logistics like shipping.
class AddIndexToUserPreferences < ActiveRecord::Migration
  def change
  	add_index :users, :preferences, unique: true
  end
end
