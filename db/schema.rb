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

ActiveRecord::Schema[7.0].define(version: 2022_07_02_221252) do
  create_table "addresses", force: :cascade do |t|
    t.string "municipality"
    t.string "zip_code"
    t.string "neighborhood"
    t.string "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "alias"
    t.string "category"
    t.string "sex"
    t.string "status"
    t.text "particular_signs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rescues", force: :cascade do |t|
    t.date "date"
    t.string "rescuers"
    t.string "organization"
    t.text "notes"
    t.integer "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "animal_id", null: false
    t.index ["address_id"], name: "index_rescues_on_address_id"
    t.index ["animal_id"], name: "index_rescues_on_animal_id"
  end

  add_foreign_key "rescues", "addresses"
  add_foreign_key "rescues", "animals"
end
