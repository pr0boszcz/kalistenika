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

ActiveRecord::Schema.define(version: 20150218173756) do

  create_table "exercise_exercises_group", id: false, force: true do |t|
    t.integer "exercise_id"
    t.integer "exercises_group_id"
  end

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises_groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "weekdays"
    t.integer  "duration"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans_series", id: false, force: true do |t|
    t.integer "serie_id"
    t.integer "plan_id"
  end

  add_index "plans_series", ["serie_id", "plan_id"], name: "index_plans_series_on_serie_id_and_plan_id"

  create_table "plans_trainings", id: false, force: true do |t|
    t.integer "plan_id"
    t.integer "training_id"
  end

  add_index "plans_trainings", ["plan_id", "training_id"], name: "index_plans_trainings_on_plan_id_and_training_id"

  create_table "series", force: true do |t|
    t.integer  "repeats"
    t.integer  "user_id"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_days", force: true do |t|
    t.date     "date"
    t.integer  "training_id"
    t.integer  "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "is_done",     default: 0
  end

  create_table "trainings", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "pause"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings_series", id: false, force: true do |t|
    t.integer "training_id"
    t.integer "serie_id"
  end

  add_index "trainings_series", ["serie_id", "training_id"], name: "index_trainings_series_on_serie_id_and_training_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
