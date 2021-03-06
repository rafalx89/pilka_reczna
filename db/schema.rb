# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110106181959) do

  create_table "contracts", :force => true do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_tables", :force => true do |t|
    t.integer  "position"
    t.integer  "season_id"
    t.integer  "team_id"
    t.integer  "matches_quantity"
    t.integer  "win_matches"
    t.integer  "lost_matches"
    t.integer  "tied_matches"
    t.integer  "lost_goals"
    t.integer  "scored_goals"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchdays", :force => true do |t|
    t.integer  "matchday_no"
    t.integer  "season_id"
    t.date     "play_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", :force => true do |t|
    t.integer  "team_1"
    t.integer  "team_2"
    t.integer  "matchday_id"
    t.integer  "score_team_1"
    t.integer  "score_team_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "country"
    t.date     "birth_date"
    t.string   "position"
    t.integer  "shirt_no"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", :force => true do |t|
    t.integer  "season_no"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "coach"
    t.string   "image_url"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
