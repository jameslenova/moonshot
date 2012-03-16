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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120314155306) do

  create_table "circles", :force => true do |t|
    t.integer  "event_id"
    t.string   "table"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "circles", ["event_id"], :name => "index_circles_on_event_id"
  add_index "circles", ["id"], :name => "index_circles_on_id"

  create_table "circleusers", :force => true do |t|
    t.integer  "circle_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "circleusers", ["circle_id"], :name => "index_circleusers_on_circle_id"
  add_index "circleusers", ["user_id", "circle_id"], :name => "index_circleusers_on_user_id_and_circle_id", :unique => true
  add_index "circleusers", ["user_id"], :name => "index_circleusers_on_user_id"

  create_table "events", :force => true do |t|
    t.integer  "location_id"
    t.datetime "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "events", ["id"], :name => "index_events_on_id"

  create_table "freefors", :force => true do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "freefors", ["event_id"], :name => "index_freefors_on_event_id"
  add_index "freefors", ["user_id", "event_id"], :name => "index_freefors_on_user_id_and_event_id", :unique => true
  add_index "freefors", ["user_id"], :name => "index_freefors_on_user_id"

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "homepage"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "postal"
  end

  add_index "locations", ["id"], :name => "index_locations_on_id"
  add_index "locations", ["name"], :name => "index_locations_on_name"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "microposts", ["user_id", "created_at"], :name => "index_microposts_on_user_id_and_created_at"

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
