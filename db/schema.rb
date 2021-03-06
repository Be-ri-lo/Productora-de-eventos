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

ActiveRecord::Schema.define(version: 2021_03_17_184645) do

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.integer "members", default: 1
    t.date "debut"
    t.integer "band_sort", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.integer "band_id"
    t.integer "attendance", default: 0
    t.integer "duration", default: 0
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_concerts_on_band_id"
  end

  create_table "crews", force: :cascade do |t|
    t.string "members_name"
    t.integer "band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_id"], name: "index_crews_on_band_id"
  end

end
