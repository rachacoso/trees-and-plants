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

ActiveRecord::Schema.define(version: 2018_10_09_194915) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "adjectives", force: :cascade do |t|
    t.text "adjective"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.text "color"
    t.text "color_type"
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
    t.integer "adjective_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adjective_id"], name: "index_plant_adjectives_on_adjective_id"
    t.index ["plant_id"], name: "index_plant_adjectives_on_plant_id"
  end

  create_table "plant_colors", force: :cascade do |t|
    t.integer "color_id"
    t.integer "plant_id"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_plant_colors_on_color_id"
    t.index ["plant_id"], name: "index_plant_colors_on_plant_id"
  end

  create_table "plant_growth_rates", force: :cascade do |t|
    t.integer "growth_rate_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["growth_rate_id"], name: "index_plant_growth_rates_on_growth_rate_id"
    t.index ["plant_id"], name: "index_plant_growth_rates_on_plant_id"
  end

  create_table "plant_leafing_types", force: :cascade do |t|
    t.integer "leafing_type_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leafing_type_id"], name: "index_plant_leafing_types_on_leafing_type_id"
    t.index ["plant_id"], name: "index_plant_leafing_types_on_plant_id"
  end

  create_table "plant_textures", force: :cascade do |t|
    t.integer "texture_id"
    t.integer "plant_id"
    t.text "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_textures_on_plant_id"
    t.index ["texture_id"], name: "index_plant_textures_on_texture_id"
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
