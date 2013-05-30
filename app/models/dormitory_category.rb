class DormitoryCategory < ActiveRecord::Base
  attr_accessible :name

  has_many :dormitories, :foreign_key => "dormitory_category"
end
