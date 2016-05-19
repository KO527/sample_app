class AddCropSharesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :crop_shares, :string, array: true, default: []
  end
end
