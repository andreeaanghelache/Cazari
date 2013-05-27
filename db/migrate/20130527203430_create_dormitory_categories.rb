class CreateDormitoryCategories < ActiveRecord::Migration
  def change
    create_table :dormitory_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
