class Dormitory < ActiveRecord::Base
  attr_accessible :address, :administrator, :category_id, :description, :name, :telephone

  has_one :dormitory_category, :foreign_key => "category_id"
  has_many :allocations, :foreign_key => "dormitory_id"

  has_many :accommodations, :foreign_key => "last_dormitory"

  has_many :accommodations, :foreign_key => "first_dormitory"

end
