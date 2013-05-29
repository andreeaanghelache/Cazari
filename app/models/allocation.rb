class Allocation < ActiveRecord::Base
  attr_accessible :dormitory_id, :room_number, :type_of_room, :year

  has_one :dormitory, :foreign_key => "dormitory_id"
  has_one :room, :foreign_key => "room_number"

end
