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

ActiveRecord::Schema.define(version: 20160220015545) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appointments", ["course_id"], name: "index_appointments_on_course_id"
  add_index "appointments", ["user_id"], name: "index_appointments_on_user_id"

  create_table "containers", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "containers", ["course_id"], name: "index_containers_on_course_id"

  create_table "course_students", force: :cascade do |t|
    t.string   "course"
    t.string   "student"
    t.string   "reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 0
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "course_id",  null: false
    t.integer "student_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "avatar"
  end

end
