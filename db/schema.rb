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
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 20180614061033) do

ActiveRecord::Schema.define(version: 20180407033948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fines", force: :cascade do |t|
    t.string   "reason"
    t.float    "amt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.integer  "spot_id"
    t.integer  "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_parkings_on_spot_id", using: :btree
    t.index ["vehicle_id"], name: "index_parkings_on_vehicle_id", using: :btree
  end

  create_table "spots", force: :cascade do |t|
    t.string   "name"
    t.boolean  "free"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_spots_on_type_id", using: :btree
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicle_fines", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "fine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fine_id"], name: "index_vehicle_fines_on_fine_id", using: :btree
    t.index ["vehicle_id"], name: "index_vehicle_fines_on_vehicle_id", using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "file_name"
    t.string   "name"
    t.string   "model"
    t.string   "vnumber"

    t.datetime "insurance_expiry_date"
    t.datetime "pollution_expiry_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "type_id"
  end

  add_foreign_key "parkings", "spots"
  add_foreign_key "parkings", "vehicles"
  add_foreign_key "spots", "types"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "vehicle_fines", "fines"
  add_foreign_key "vehicle_fines", "vehicles"
end
