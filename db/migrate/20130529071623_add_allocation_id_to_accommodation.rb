class AddAllocationIdToAccommodation < ActiveRecord::Migration
  def change
    add_column :accommodations, :allocation_id, :integer
  end
end
