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

ActiveRecord::Schema.define(version: 20180330161416) do

  create_table "forms", force: :cascade do |t|
    t.string   "food",        limit: 255
    t.string   "sports",      limit: 255
    t.string   "book",        limit: 255
    t.string   "foods",       limit: 255
    t.string   "dinner",      limit: 255
    t.string   "gender",      limit: 255
    t.string   "programming", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "age",        limit: 4
    t.string   "address",    limit: 255
    t.string   "gender",     limit: 255
    t.string   "program",    limit: 255
    t.string   "skils",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
