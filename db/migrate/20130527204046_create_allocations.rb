class CreateAllocations < ActiveRecord::Migration
  def change
    create_table :allocations do |t|
      t.integer :dormitory_id
      t.integer :room_number
      t.date :year
      t.string :type_of_room

      t.timestamps
    end
  end
end
