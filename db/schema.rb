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

ActiveRecord::Schema.define(version: 20160513170230) do

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.string   "eyecolor"
    t.string   "haircolor"
    t.string   "birthsign"
    t.string   "placeofbirth"
    t.string   "specialmarks"
    t.integer  "weight"
    t.decimal  "height"
    t.integer  "experience"
    t.integer  "ww"
    t.integer  "us"
    t.integer  "k"
    t.integer  "odp"
    t.integer  "zr"
    t.integer  "intelligence"
    t.integer  "sw"
    t.integer  "ogd"
    t.integer  "a"
    t.integer  "hp"
    t.integer  "s"
    t.integer  "wt"
    t.integer  "sz"
    t.integer  "mag"
    t.integer  "po"
    t.integer  "pp"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "race_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
