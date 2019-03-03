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

ActiveRecord::Schema.define(version: 2019_03_01_041105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.float "msrp"
    t.string "type"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  #total price needs * 1.13 for tax
  create_table "prices", force: :cascade do |t|
    t.float "vehicle_price"
    t.float "freight_delivery"
    t.float "total_price"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  add_index "prices", ["car_id"], name: "index_prices_on_car_id", using: :btree


  create_table "warranties", force: :cascade do |t|
    t.string "bumper"
    t.string "powertrain"
    t.string "roadside"
    t.string "rust"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "warranties", ["car_id"], name: "index_warranties_on_car_id", using: :btree


  create_table "pictures", force: :cascade do |t|
    t.string "url"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pictures", ["car_id"], name: "index_pictures_on_car_id", using: :btree


  # Combined fuel economy is a weighted average of City and Highway MPG values that is calculated by weighting the City value by 55% and the Highway value by 45%.
  create_table "fuels", force: :cascade do |t|
    t.float "auto_city"
    t.float "auto_highway"
    t.float "auto_combined"
    t.float "manual_city"
    t.float "manual_highway"
    t.float "manual_combined"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fuels", ["car_id"], name: "index_fuels_on_car_id", using: :btree

  #edmunds
  create_table "maintenance_models", force: :cascade do |t|
    t.float "first"
    t.float "second"
    t.float "third"
    t.float "fourth"
    t.float "fifth"
    t.float "total"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "maintenance_models", ["car_id"], name: "index_maintenance_models_on_car_id", using: :btree

  #edmunds
  create_table "depreciation_models", force: :cascade do |t|
    t.float "first"
    t.float "second"
    t.float "third"
    t.float "fourth"
    t.float "fifth"
    t.float "total"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "depreciation_models", ["car_id"], name: "index_depreciation_models_on_car_id", using: :btree


  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_cars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "saved_cars", ["user_id"], name: "index_saved_cars_on_user_id", using: :btree
  add_index "saved_cars", ["car_id"], name: "index_saved_cars_on_car_id", using: :btree

  create_table "comparisons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comparison_car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comparisons", ["user_id"], name: "index_comparisons_on_user_id", using: :btree
  add_index "comparisons", ["comparison_car_id"], name: "index_comparisons_on_comparison_car_id", using: :btree

  create_table "comparison_cars", force: :cascade do |t|
    t.integer "comparison_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "conparison_cars", ["comparison_id"], name: "index_conparison_cars_on_comparison_id", using: :btree
  add_index "conparison_cars", ["car_id"], name: "index_conparison_cars_on_car_id", using: :btree




  add_foreign_key "prices", "cars"
  add_foreign_key "warranties", "cars"
  add_foreign_key "pictures", "cars"
  add_foreign_key "fuels", "cars"
  add_foreign_key "maintenance_models", "cars"
  add_foreign_key "depreciation_models", "cars"
  add_foreign_key "saved_cars", "users"
  add_foreign_key "saved_cars", "cars"
  add_foreign_key "comparisons", "users"
  add_foreign_key "comparisons", "comparison_cars"
  add_foreign_key "comparison_cars", "comparisons"
  add_foreign_key "comparison_cars", "cars"
end
