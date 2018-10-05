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

ActiveRecord::Schema.define(version: 2018_10_05_195302) do

  create_table "adjectives", force: :cascade do |t|
    t.text "adjective"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.text "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "growth_rates", force: :cascade do |t|
    t.text "growth_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leafing_types", force: :cascade do |t|
    t.text "leafing_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plant_adjectives", force: :cascade do |t|
    t.integer "adjective_id_id"
    t.integer "plant_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjective_id_id"], name: "index_plant_adjectives_on_adjective_id_id"
    t.index ["plant_id_id"], name: "index_plant_adjectives_on_plant_id_id"
  end

  create_table "plant_colors", force: :cascade do |t|
    t.integer "color_id_id"
    t.integer "plant_id_id"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id_id"], name: "index_plant_colors_on_color_id_id"
    t.index ["plant_id_id"], name: "index_plant_colors_on_plant_id_id"
  end

  create_table "plant_growth_rates", force: :cascade do |t|
    t.integer "rate_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rate_id_id"], name: "index_plant_growth_rates_on_rate_id_id"
  end

  create_table "plant_leafing_types", force: :cascade do |t|
    t.integer "leafing_type_id_id"
    t.integer "plant_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leafing_type_id_id"], name: "index_plant_leafing_types_on_leafing_type_id_id"
    t.index ["plant_id_id"], name: "index_plant_leafing_types_on_plant_id_id"
  end

  create_table "plant_textures", force: :cascade do |t|
    t.integer "texture_id_id"
    t.integer "plant_id_id"
    t.text "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id_id"], name: "index_plant_textures_on_plant_id_id"
    t.index ["texture_id_id"], name: "index_plant_textures_on_texture_id_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "genus"
    t.string "species"
    t.string "common_name"
    t.boolean "tree"
    t.boolean "shrub"
    t.string "leafing_type"
    t.boolean "fruits"
    t.boolean "ca_native"
    t.integer "height_min"
    t.integer "height_max"
    t.integer "width_min"
    t.integer "width_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textures", force: :cascade do |t|
    t.text "texture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
