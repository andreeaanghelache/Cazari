class Allocation < ActiveRecord::Base
  attr_accessible :dormitory_id, :room_number, :type_of_room, :year
 
  has_one :accommodation, :foreign_key => "allocation_id"
end
