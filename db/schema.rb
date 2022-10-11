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

ActiveRecord::Schema[7.0].define(version: 2022_09_17_142046) do
  create_table "cheeses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.boolean "is_best_seller"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.string "rep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugdistributionlogs", force: :cascade do |t|
    t.integer "drug_id"
    t.integer "removed_units"
    t.integer "remaining_units"
    t.integer "department_id"
    t.string "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugpurchaselogs", force: :cascade do |t|
    t.string "order_no"
    t.string "order_date"
    t.integer "drug_id"
    t.integer "supplier_id"
    t.integer "purchased_units"
    t.integer "price_per_unit"
    t.integer "c"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "name"
    t.integer "drugunit_id"
    t.integer "current_stock"
    t.integer "in_stock"
    t.integer "initial_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugtracklogs", force: :cascade do |t|
    t.integer "drug_id"
    t.integer "former_stock"
    t.string "drug_action"
    t.integer "drugdistributionlog_id"
    t.integer "drugpurchaselog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugunits", force: :cascade do |t|
    t.string "name"
    t.integer "drugunitcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier_ref"
    t.string "supplier_name"
    t.string "contact"
    t.integer "paybill_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
