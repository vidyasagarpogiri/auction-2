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

ActiveRecord::Schema.define(version: 20151113012322) do

  create_table "bids", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "bidder"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "amount"
  end

  add_index "bids", ["item_id"], name: "index_bids_on_item_id"

  create_table "items", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "mininum_bid"
    t.integer  "bid_increment"
    t.text     "image"
    t.text     "donator"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "current_bid"
  end

end
