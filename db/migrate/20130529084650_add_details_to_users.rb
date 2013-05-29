class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :token, :string
    add_column :users, :email, :string
    add_column :users, :is_student, :string
    add_column :users, :is_teacher, :string
    add_column :users, :is_management, :string
    add_column :users, :is_admin, :string
  end
end
