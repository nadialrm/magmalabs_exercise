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

ActiveRecord::Schema.define(version: 20160408181658) do

  create_table "departments", force: :cascade do |t|
    t.string   "name",                limit: 50, default: "", null: false
    t.integer  "arrival_tolerance",   limit: 2,  default: 0,  null: false
    t.integer  "departure_tolerance", limit: 2,  default: 0,  null: false
    t.integer  "status",                         default: 1,  null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "departments_schedules", force: :cascade do |t|
    t.integer  "department_id"
    t.time     "arrival",       default: '2000-01-01 00:00:00', null: false
    t.time     "departure",     default: '2000-01-01 00:00:00', null: false
    t.boolean  "sun",           default: false,                 null: false
    t.boolean  "mon",           default: false,                 null: false
    t.boolean  "tue",           default: false,                 null: false
    t.boolean  "wed",           default: false,                 null: false
    t.boolean  "thu",           default: false,                 null: false
    t.boolean  "fri",           default: false,                 null: false
    t.boolean  "sat",           default: false,                 null: false
    t.integer  "status",        default: 1,                     null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "departments_schedules", ["department_id"], name: "index_departments_schedules_on_department_id"

  create_table "employes", force: :cascade do |t|
    t.string   "first_name",    limit: 50,  default: "", null: false
    t.string   "last_name",     limit: 50,  default: "", null: false
    t.string   "address",       limit: 255, default: "", null: false
    t.string   "phone",         limit: 30,  default: "", null: false
    t.string   "barcode",                                null: false
    t.integer  "department_id"
    t.integer  "status",                    default: 1,  null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "employes", ["department_id"], name: "index_employes_on_department_id"

  create_table "employes_attendances", force: :cascade do |t|
    t.integer  "employe_id"
    t.integer  "departments_schedule_id"
    t.datetime "arrival"
    t.integer  "arrival_ontime"
    t.datetime "departure"
    t.integer  "departure_ontime"
    t.integer  "status",                  default: 0, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "employes_attendances", ["departments_schedule_id"], name: "index_employes_attendances_on_departments_schedule_id"
  add_index "employes_attendances", ["employe_id"], name: "index_employes_attendances_on_employe_id"

  create_table "users", force: :cascade do |t|
    t.string   "userid",                 default: "", null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["userid"], name: "index_users_on_userid", unique: true

end
