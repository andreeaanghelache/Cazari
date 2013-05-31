class Dormitory < ActiveRecord::Base
  attr_accessible :address, :administrator, :category_id, :description, :name, :telephone

  has_one :dormitory_category, :foreign_key => "category_id"
  has_many :allocations, :foreign_key => "dormitory_id"

  has_one :accommodation, :foreign_key => "last_dorm"
  has_one :accommodation, :foreign_key => "first_dorm"
  has_one :accommodation, :foreign_key => "second_dorm"
  has_one :accommodation, :foreign_key => "third_dorm"


end
