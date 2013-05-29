class Accommodation < ActiveRecord::Base
  attr_accessible :continuity, :first_dorm, :interdiction_dorm, :interdiction_reason, :interdiction_type, :last_dorm, :last_room, :roommate_group, :roommate_name, :second_dorm, :social_case, :status, :third_dorm, :user_id, :allocation_id
end
