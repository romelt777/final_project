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

ActiveRecord::Schema.define(version: 2019_03_04_055306) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "condition"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "price_id"
    t.index ["price_id"], name: "index_cars_on_price_id"
  end

  create_table "depreciations", force: :cascade do |t|
    t.float "first"
    t.float "second"
    t.float "third"
    t.float "fourth"
    t.float "fifth"
    t.float "total"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_depreciations_on_car_id"
  end

  create_table "fuels", force: :cascade do |t|
    t.float "auto_city"
    t.string "auto_highway_float"
    t.float "auto_combined"
    t.float "manual_city"
    t.float "manual_highway"
    t.float "manual_combined"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_fuels_on_car_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.float "first"
    t.float "second"
    t.float "third"
    t.float "fourth"
    t.float "fifth"
    t.float "total"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_maintenances_on_car_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "url"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_pictures_on_car_id"
  end

  create_table "prices", force: :cascade do |t|
    t.float "vehicle_price"
    t.float "freight_delivery"
    t.float "total_price"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_prices_on_car_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warranties", force: :cascade do |t|
    t.string "bumper"
    t.string "powertrain"
    t.string "roadside"
    t.string "rust"
    t.bigint "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_warranties_on_car_id"
  end

  add_foreign_key "cars", "prices"
  add_foreign_key "depreciations", "cars"
  add_foreign_key "fuels", "cars"
  add_foreign_key "maintenances", "cars"
  add_foreign_key "pictures", "cars"
  add_foreign_key "prices", "cars"
  add_foreign_key "warranties", "cars"
end
