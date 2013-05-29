class Dormitory < ActiveRecord::Base
  attr_accessible :address, :administrator, :category_id, :description, :name, :telephone

  has_one :dormitory_category, :foreign_key => "category_id"
end
