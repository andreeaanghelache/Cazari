class Document < ActiveRecord::Base
  attr_accessible :accommodation_id, :comment, :status

  has_one :accommodation, :foreign_key => "accommodation_id"

end
