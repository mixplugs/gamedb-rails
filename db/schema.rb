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

ActiveRecord::Schema.define(version: 2018_05_14_164240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drops", primary_key: ["monster_id", "item_id"], force: :cascade do |t|
    t.bigint "monster_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_drops_on_item_id"
    t.index ["monster_id"], name: "index_drops_on_monster_id"
  end

  create_table "foods", force: :cascade do |t|
    t.integer "health", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holds", primary_key: ["player_id", "item_id"], force: :cascade do |t|
    t.integer "quantity", null: false
    t.bigint "player_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_holds_on_item_id"
    t.index ["player_id"], name: "index_holds_on_player_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.integer "value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.integer "health", null: false
    t.integer "level", null: false
    t.integer "attack", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.text "dialogue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.integer "level", null: false
    t.integer "health", null: false
    t.string "career", null: false
    t.bigint "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_players_on_server_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "is_main", null: false
    t.integer "level", null: false
    t.bigint "npc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["npc_id"], name: "index_quests_on_npc_id"
  end

  create_table "receives", primary_key: ["quest_id", "player_id"], force: :cascade do |t|
    t.bigint "quest_id", null: false
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_receives_on_player_id"
    t.index ["quest_id"], name: "index_receives_on_quest_id"
  end

  create_table "rewards", primary_key: ["quest_id", "item_id"], force: :cascade do |t|
    t.bigint "quest_id", null: false
    t.bigint "item_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_rewards_on_item_id"
    t.index ["quest_id"], name: "index_rewards_on_quest_id"
  end

  create_table "servers", force: :cascade do |t|
    t.boolean "running", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.integer "attack", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drops", "items"
  add_foreign_key "drops", "monsters"
  add_foreign_key "foods", "items", column: "id", name: "fk_foods_items"
  add_foreign_key "holds", "items"
  add_foreign_key "holds", "players"
  add_foreign_key "monsters", "creatures", column: "id", name: "fk_monsters_creatures"
  add_foreign_key "npcs", "creatures", column: "id", name: "fk_npcs_creatures"
  add_foreign_key "players", "servers"
  add_foreign_key "quests", "npcs"
  add_foreign_key "receives", "players"
  add_foreign_key "receives", "quests"
  add_foreign_key "rewards", "items"
  add_foreign_key "rewards", "quests"
  add_foreign_key "weapons", "items", column: "id", name: "fk_weapons_items"
end
