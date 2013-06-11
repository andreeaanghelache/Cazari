class Accommodation < ActiveRecord::Base
  attr_accessible :continuity, :first_dorm, :interdiction_dorm, :interdiction_reason, :interdiction_type, :last_dorm, :last_room, :roommate_group, :roommate_name, :second_dorm, :social_case, :status, :third_dorm, :user_id, :allocation_id

  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :last_dormitory, :class_name => "Dormitory", :foreign_key => "last_dorm"
  belongs_to :first_dormitory, :class_name => "Dormitory", :foreign_key => "first_dorm"
  belongs_to :second_dormitory, :class_name => "Dormitory", :foreign_key => "second_dorm"
  belongs_to :third_dormitory, :class_name => "Dormitory", :foreign_key => "third_dorm"
end
