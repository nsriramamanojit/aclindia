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

ActiveRecord::Schema.define(:version => 20110120110959) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.integer  "country_id"
    t.integer  "state_id"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchanges", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labcentrals", :force => true do |t|
    t.string   "labid"
    t.string   "labname"
    t.string   "housenumber"
    t.string   "street"
    t.string   "area"
    t.string   "landmark"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "land"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lablocationals", :force => true do |t|
    t.integer  "labcentral_id"
    t.integer  "labregional_id"
    t.string   "labid"
    t.string   "labname"
    t.string   "housenumber"
    t.string   "street"
    t.string   "area"
    t.string   "landmark"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "land"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labregionals", :force => true do |t|
    t.integer  "labcentral_id"
    t.string   "labid"
    t.string   "labname"
    t.string   "housenumber"
    t.string   "street"
    t.string   "area"
    t.string   "landmark"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "land"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packings", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sampleconditions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sampleplaces", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sampleunits", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seals", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testmethods", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testparameters", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testrequires", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teststandards", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "fileurl"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouses", :force => true do |t|
    t.string   "whnumber"
    t.string   "whnickname"
    t.text     "whaddress"
    t.string   "status"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
