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

ActiveRecord::Schema[7.0].define(version: 2023_08_26_094146) do
  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "position"
    t.float "radious_in_km"
    t.decimal "mass"
    t.float "orbit_in_days"
    t.integer "solar_system_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solar_system_id"], name: "index_planets_on_solar_system_id"
  end

  create_table "solar_systems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "age_in_bn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stars", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "radious_in_km"
    t.decimal "mass"
    t.decimal "surface_temperature_in_k"
    t.integer "solar_system_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["solar_system_id"], name: "index_stars_on_solar_system_id"
  end

  add_foreign_key "planets", "solar_systems"
  add_foreign_key "stars", "solar_systems"
end
