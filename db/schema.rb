# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_10_221924) do

  create_table "appointments", force: :cascade do |t|
    t.string "massage_therapist"
    t.string "client"
    t.string "modality"
    t.string "appointment_time"
    t.string "special_request"
    t.integer "massage_therapist_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["massage_therapist_id"], name: "index_appointments_on_massage_therapist_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "medical_history"
    t.string "address"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "massage_therapists", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "massage_therapists"
end
