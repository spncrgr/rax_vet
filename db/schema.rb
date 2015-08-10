# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150810034201) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.boolean  "require_reminder"
    t.text     "reason_for_visit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",              limit: 35
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state",             limit: 2
    t.string   "zip_code",          limit: 5
    t.text     "school_attended"
    t.integer  "years_in_practice"
    t.boolean  "doctor"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.datetime "date_time_started"
    t.datetime "date_time_ended"
    t.boolean  "requires_follow_up"
    t.string   "follow_up_in"
    t.text     "diagnoses"
    t.text     "prescriptions"
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "pet_type"
    t.string   "breed"
    t.float    "age"
    t.float    "weight"
    t.datetime "date_of_last_appointment"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "customer"
    t.boolean  "admin"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
