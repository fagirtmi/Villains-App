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

ActiveRecord::Schema.define(version: 20170412025910) do

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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "villains", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
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
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
