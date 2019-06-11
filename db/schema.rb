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

ActiveRecord::Schema.define(version: 20190611012614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "results", force: :cascade do |t|
    t.string   "MachineGuid"
    t.boolean  "cleared"
    t.string   "datetime"
    t.string   "Disqualified"
    t.string   "grade"
    t.string   "Guid"
    t.string   "Held"
    t.string   "LetGo"
    t.string   "MissedHold"
    t.string   "LifeRemainingSeconds"
    t.string   "MaxCombo"
    t.string   "Modifiers"
    t.string   "Pad"
    t.string   "PercentDP"
    t.string   "PlayerGuid"
    t.string   "ProductID"
    t.string   "Air"
    t.string   "Chaos"
    t.string   "Fakes"
    t.string   "Freeze"
    t.string   "Hands"
    t.string   "Holds"
    t.string   "Jumps"
    t.string   "Lifts"
    t.string   "Mines"
    t.string   "Notes"
    t.string   "Rolls"
    t.string   "Stream"
    t.string   "TapsAndHolds"
    t.string   "Voltage"
    t.integer  "score"
    t.string   "StageGuid"
    t.float    "survive_seconds"
    t.string   "AvoidMine"
    t.string   "CheckpointHit"
    t.string   "CheckpointMiss"
    t.string   "HitMine"
    t.string   "Miss"
    t.string   "W1"
    t.string   "W2"
    t.string   "W3"
    t.string   "W4"
    t.string   "W5"
    t.string   "Dir"
    t.string   "difficulty"
    t.integer  "level"
    t.string   "StepsType"
    t.string   "_id"
    t.string   "_index"
    t.string   "_score"
    t.string   "_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "title"
  end

  create_table "target_songs", force: :cascade do |t|
    t.integer  "level"
    t.string   "title"
    t.string   "difficulty"
    t.boolean  "cleared"
    t.string   "wikilink"
    t.string   "movielink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
