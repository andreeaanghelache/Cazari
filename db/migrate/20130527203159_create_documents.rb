class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :accommodation_id
      t.text :comment
      t.string :status

      t.timestamps
    end
  end
end
