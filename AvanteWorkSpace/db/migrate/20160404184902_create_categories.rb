class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :ancestry
      t.string :image_id

      t.timestamps null: false
    end
    add_index :categories, :title
    add_index :categories, :ancestry
  end
end
