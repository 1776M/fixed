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

ActiveRecord::Schema.define(:version => 20110502131106) do

  create_table "admins", :force => true do |t|
    t.float    "cost_of_debt"
    t.float    "risk_premium"
    t.float    "interest_rate_risk"
    t.float    "ebitda_risk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "industry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finances", :force => true do |t|
    t.float    "ebitda"
    t.float    "debt"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "finances", ["client_id"], :name => "index_finances_on_client_id"

  create_table "users", :force => true do |t|
    t.float    "fixed"
    t.float    "float"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count"
  end

end
