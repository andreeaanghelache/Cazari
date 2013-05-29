class DormitoryCategory < ActiveRecord::Base
  attr_accessible :name

  belongs_to :dormitory
end
