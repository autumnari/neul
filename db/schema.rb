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

ActiveRecord::Schema.define(version: 20180627073028) do

  create_table "dailies", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "music"
    t.string   "singer"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "music_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musics", force: :cascade do |t|
    t.string   "title"
    t.string   "singer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tapes", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.string   "image"
    t.string   "m1_title"
    t.string   "m1_singer"
    t.integer  "m1_like"
    t.string   "m2_title"
    t.string   "m2_singer"
    t.integer  "m2_like"
    t.string   "m3_title"
    t.string   "m3_singer"
    t.integer  "m3_like"
    t.string   "m4_title"
    t.string   "m4_singer"
    t.integer  "m4_like"
    t.string   "m5_title"
    t.string   "m5_singer"
    t.integer  "m5_like"
    t.string   "m6_title"
    t.string   "m6_singer"
    t.integer  "m6_like"
    t.string   "m7_title"
    t.string   "m7_singer"
    t.integer  "m7_like"
    t.string   "m8_title"
    t.string   "m8_singer"
    t.integer  "m8_like"
    t.string   "m9_title"
    t.string   "m9_singer"
    t.integer  "m9_like"
    t.string   "m10_title"
    t.string   "m10_singer"
    t.integer  "m10_like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "introduce_text"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
