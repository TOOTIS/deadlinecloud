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

ActiveRecord::Schema.define(version: 20140819174955) do

  create_table "deadlines", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.string   "title"
    t.text     "description"
    t.integer  "priority",    default: 0
    t.datetime "finish_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deadlines", ["user_id", "group_id"], name: "index_deadlines_on_user_id_and_group_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["name"], name: "index_groups_on_name", using: :btree

  create_table "groups_users", id: false, force: true do |t|
    t.integer "group_id"
    t.integer "user_id"
    t.boolean "is_admin", default: false
  end

  add_index "groups_users", ["group_id", "user_id"], name: "index_groups_users_on_group_id_and_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "phone_id"
    t.integer  "reports_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["phone_id"], name: "index_users_on_phone_id", using: :btree

end
