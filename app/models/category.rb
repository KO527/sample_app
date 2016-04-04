class Category < ActiveRecord::Base
  attachment :image
  has_ancestry

  def parent_enum
    Category.where.not(id: id).map { |c| [ c.name, c.id ] }
  end
end
