require 'test_helper'

class AccommodationTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   test "has user_id" do
     accommodation = Accommodation.new
     assert !accommodation.save
   end
end
