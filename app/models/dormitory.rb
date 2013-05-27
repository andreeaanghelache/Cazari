class Dormitory < ActiveRecord::Base
  attr_accessible :address, :administrator, :category_id, :description, :name, :telephone
end
