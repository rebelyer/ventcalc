# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_06_141532) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buildings", force: :cascade do |t|
    t.string "investor_name", null: false
    t.string "address", null: false
    t.integer "building_area", null: false
    t.integer "residents_number", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_buildings_on_user_id"
  end

  create_table "floors", force: :cascade do |t|
    t.string "name", null: false
    t.integer "position", null: false
    t.bigint "building_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_floors_on_building_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name", null: false
    t.integer "type", null: false
    t.integer "residents_number", null: false
    t.float "area", null: false
    t.float "height", null: false
    t.integer "air_flow", null: false
    t.integer "air_direction", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "floor_id", null: false
    t.index ["floor_id"], name: "index_rooms_on_floor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "buildings", "users"
  add_foreign_key "floors", "buildings"
  add_foreign_key "rooms", "floors"
end
