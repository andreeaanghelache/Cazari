class CreateDormitories < ActiveRecord::Migration
  def change
    create_table :dormitories do |t|
      t.integer :category_id
      t.string :name
      t.text :address
      t.text :description
      t.string :administrator
      t.string :telephone

      t.timestamps
    end
  end
end
