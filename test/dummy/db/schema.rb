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

ActiveRecord::Schema.define(version: 20161102141756) do

  create_table "event_occurrences", force: :cascade do |t|
    t.datetime "date"
    t.integer  "schedulable_id"
    t.string   "schedulable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "event_occurrences", ["schedulable_type", "schedulable_id"], name: "index_event_occurrences_on_schedulable_type_and_schedulable_id"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "schedulable_id"
    t.string   "schedulable_type"
    t.date     "date"
    t.time     "time"
    t.string   "rule"
    t.string   "interval"
    t.text     "day"
    t.text     "day_of_week"
    t.datetime "until"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "time_zone"
  end

  create_table "test_events", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
