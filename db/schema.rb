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

ActiveRecord::Schema.define(version: 20180314111709) do

  create_table "diaries", force: :cascade do |t|
    t.string   "title",                  limit: 255
    t.string   "author",                 limit: 255
    t.string   "publisher",              limit: 255
    t.integer  "reco_rate",              limit: 4
    t.integer  "genre_id",               limit: 4
    t.integer  "user_id",                limit: 4
    t.datetime "posted_datetime"
    t.boolean  "public_flag"
    t.text     "impression",             limit: 65535
    t.boolean  "impression_public_flag"
    t.text     "memo",                   limit: 65535
    t.boolean  "memo_public_flag"
    t.text     "action",                 limit: 65535
    t.boolean  "action_public_flag"
    t.text     "reco_for",               limit: 65535
    t.boolean  "reco_for_public_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
