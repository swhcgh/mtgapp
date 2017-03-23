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

ActiveRecord::Schema.define(version: 20170322205637) do

  create_table "cards", force: :cascade do |t|
    t.string   "Card_Name"
    t.string   "Color"
    t.string   "Cost"
    t.string   "Type"
    t.string   "Subtype_1"
    t.string   "Subtype_2"
    t.string   "Subtype_3"
    t.string   "Rarity"
    t.string   "P"
    t.string   "T"
    t.integer  "Loyal"
    t.text     "Rules_Text"
    t.integer  "CMC"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contenders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.integer  "deck_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "points"
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "contender_id"
    t.text     "Cardlist"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pairings", force: :cascade do |t|
    t.integer  "Contender1"
    t.integer  "Contender2"
    t.integer  "tournament_id"
    t.string   "Result"
    t.integer  "RoundNumber"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
