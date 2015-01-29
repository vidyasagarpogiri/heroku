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

ActiveRecord::Schema.define(version: 20141110141829) do

  create_table "animals", force: true do |t|
    t.string   "name"
    t.string   "zoo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "author"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "name"
    t.string   "brand"
    t.string   "colour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "empid"
    t.float    "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "section"
    t.string   "rollnumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "product"
    t.string   "brand"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tables", force: true do |t|
    t.string   "model"
    t.string   "brand"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
