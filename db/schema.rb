# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131022012615) do

  create_table "catalogs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company", :primary_key => "bankid", :force => true do |t|
    t.string "company_name", :limit => 30
    t.string "city",         :limit => 30
  end

  create_table "employee", :primary_key => "person_name", :force => true do |t|
    t.string "street", :limit => 1
    t.string "city",   :limit => 30
  end

  create_table "inventories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "price",      :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.string   "status"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_carts", :force => true do |t|
    t.string   "status"
    t.integer  "users_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :primary_key => "userid", :force => true do |t|
    t.string "password", :limit => 128, :null => false
    t.string "name",     :limit => 30
    t.string "type",     :limit => 8
    t.string "street",   :limit => 30
    t.string "city",     :limit => 15
    t.string "state",    :limit => 2
    t.string "zip",      :limit => 5
  end

  create_table "works", :id => false, :force => true do |t|
    t.string  "person_name", :limit => 30, :null => false
    t.integer "bankid",                    :null => false
    t.integer "salary"
  end

  add_index "works", ["bankid"], :name => "bankid"

end
