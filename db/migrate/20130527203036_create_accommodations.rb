class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.integer :user_id
      t.string :last_dorm
      t.integer :last_room
      t.boolean :continuity
      t.boolean :social_case
      t.string :first_dorm
      t.string :second_dorm
      t.string :third_dorm
      t.string :roommate_name
      t.integer :roommate_group
      t.string :status
      t.string :interdiction_dorm
      t.string :interdiction_type
      t.text :interdiction_reason

      t.timestamps
    end
  end
end
