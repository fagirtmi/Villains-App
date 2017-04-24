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

ActiveRecord::Schema.define(version: 20170424085242) do

  create_table "feedbacks", force: :cascade do |t|
    t.string   "title"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followings", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "follower_id"
    t.boolean  "blocked"
    t.integer  "villains_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["villains_id"], name: "index_followings_on_villains_id"
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
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "villains", force: :cascade do |t|
    t.string   "alias"
    t.string   "birthday"
    t.integer  "gender"
    t.integer  "rank"
    t.string   "cursed"
    t.boolean  "super_strength"
    t.boolean  "healing_factor"
    t.boolean  "invulnerability"
    t.boolean  "duplication"
    t.boolean  "dynamic_camouflage"
    t.boolean  "invisibility"
    t.boolean  "enhanced_awarness"
    t.boolean  "enhanced_durability"
    t.boolean  "enhanced_marksmanship"
    t.boolean  "enhanced_reflexes"
    t.boolean  "enhanced_senses"
    t.boolean  "clairvoyance"
    t.boolean  "energy_manipulation"
    t.boolean  "immortality"
    t.boolean  "mental_projection"
    t.boolean  "psychic"
    t.boolean  "superhuman_intelligence"
    t.boolean  "time_travel"
    t.boolean  "telepathy"
    t.boolean  "teleportation"
    t.integer  "searching_for"
    t.integer  "users_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["users_id"], name: "index_villains_on_users_id"
  end

end
