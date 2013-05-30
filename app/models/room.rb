class Room < ActiveRecord::Base
  attr_accessible :number

  has_many :allocations, :foreign_key => "room_number"
end
