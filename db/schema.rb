# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130529084650) do

  create_table "accommodations", :force => true do |t|
    t.integer  "user_id"
    t.string   "last_dorm"
    t.integer  "last_room"
    t.boolean  "continuity"
    t.boolean  "social_case"
    t.string   "first_dorm"
    t.string   "second_dorm"
    t.string   "third_dorm"
    t.string   "roommate_name"
    t.integer  "roommate_group"
    t.string   "status"
    t.string   "interdiction_dorm"
    t.string   "interdiction_type"
    t.text     "interdiction_reason"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "allocation_id"
  end

  create_table "allocations", :force => true do |t|
    t.integer  "dormitory_id"
    t.integer  "room_number"
    t.date     "year"
    t.string   "type_of_room"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "documents", :force => true do |t|
    t.integer  "accommodation_id"
    t.text     "comment"
    t.string   "status"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "dormitories", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "address"
    t.text     "description"
    t.string   "administrator"
    t.string   "telephone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "dormitory_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rooms", :force => true do |t|
    t.integer  "number"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.float    "score"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "token"
    t.string   "email"
    t.string   "is_student"
    t.string   "is_teacher"
    t.string   "is_management"
    t.string   "is_admin"
  end

end
