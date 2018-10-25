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

ActiveRecord::Schema.define(version: 2018_10_25_215257) do

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
    t.string "adjective"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branch_strengths", force: :cascade do |t|
    t.string "branch_strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.string "color"
    t.string "color_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exposures", force: :cascade do |t|
    t.string "exposure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "growth_rates", force: :cascade do |t|
    t.string "growth_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habits", force: :cascade do |t|
    t.string "habit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image_type"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_images_on_plant_id"
  end

  create_table "landscape_applications", force: :cascade do |t|
    t.string "landscape_application"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "landscape_uses", force: :cascade do |t|
    t.string "landscape_use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leafing_types", force: :cascade do |t|
    t.string "leafing_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "litter_types", force: :cascade do |t|
    t.string "litter_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phs", force: :cascade do |t|
    t.string "ph"
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

  create_table "plant_branch_strengths", force: :cascade do |t|
    t.integer "branch_strength_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_strength_id"], name: "index_plant_branch_strengths_on_branch_strength_id"
    t.index ["plant_id"], name: "index_plant_branch_strengths_on_plant_id"
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

  create_table "plant_exposures", force: :cascade do |t|
    t.integer "exposure_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exposure_id"], name: "index_plant_exposures_on_exposure_id"
    t.index ["plant_id"], name: "index_plant_exposures_on_plant_id"
  end

  create_table "plant_growth_rates", force: :cascade do |t|
    t.integer "growth_rate_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["growth_rate_id"], name: "index_plant_growth_rates_on_growth_rate_id"
    t.index ["plant_id"], name: "index_plant_growth_rates_on_plant_id"
  end

  create_table "plant_habits", force: :cascade do |t|
    t.integer "habit_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["habit_id"], name: "index_plant_habits_on_habit_id"
    t.index ["plant_id"], name: "index_plant_habits_on_plant_id"
  end

  create_table "plant_landscape_applications", force: :cascade do |t|
    t.integer "landscape_application_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landscape_application_id"], name: "index_plant_landscape_applications_on_landscape_application_id"
    t.index ["plant_id"], name: "index_plant_landscape_applications_on_plant_id"
  end

  create_table "plant_landscape_uses", force: :cascade do |t|
    t.integer "landscape_use_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["landscape_use_id"], name: "index_plant_landscape_uses_on_landscape_use_id"
    t.index ["plant_id"], name: "index_plant_landscape_uses_on_plant_id"
  end

  create_table "plant_leafing_types", force: :cascade do |t|
    t.integer "leafing_type_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leafing_type_id"], name: "index_plant_leafing_types_on_leafing_type_id"
    t.index ["plant_id"], name: "index_plant_leafing_types_on_plant_id"
  end

  create_table "plant_litter_types", force: :cascade do |t|
    t.integer "litter_type_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["litter_type_id"], name: "index_plant_litter_types_on_litter_type_id"
    t.index ["plant_id"], name: "index_plant_litter_types_on_plant_id"
  end

  create_table "plant_phs", force: :cascade do |t|
    t.integer "ph_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ph_id"], name: "index_plant_phs_on_ph_id"
    t.index ["plant_id"], name: "index_plant_phs_on_plant_id"
  end

  create_table "plant_root_damage_potentials", force: :cascade do |t|
    t.integer "root_damage_potential_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_root_damage_potentials_on_plant_id"
    t.index ["root_damage_potential_id"], name: "index_plant_root_damage_potentials_on_root_damage_potential_id"
  end

  create_table "plant_salinity_tolerances", force: :cascade do |t|
    t.integer "salinity_tolerance_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_salinity_tolerances_on_plant_id"
    t.index ["salinity_tolerance_id"], name: "index_plant_salinity_tolerances_on_salinity_tolerance_id"
  end

  create_table "plant_seaside_tolerances", force: :cascade do |t|
    t.integer "seaside_tolerance_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_seaside_tolerances_on_plant_id"
    t.index ["seaside_tolerance_id"], name: "index_plant_seaside_tolerances_on_seaside_tolerance_id"
  end

  create_table "plant_shapes", force: :cascade do |t|
    t.integer "shape_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_shapes_on_plant_id"
    t.index ["shape_id"], name: "index_plant_shapes_on_shape_id"
  end

  create_table "plant_soil_moistures", force: :cascade do |t|
    t.integer "soil_moisture_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_soil_moistures_on_plant_id"
    t.index ["soil_moisture_id"], name: "index_plant_soil_moistures_on_soil_moisture_id"
  end

  create_table "plant_soil_textures", force: :cascade do |t|
    t.integer "soil_texture_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_soil_textures_on_plant_id"
    t.index ["soil_texture_id"], name: "index_plant_soil_textures_on_soil_texture_id"
  end

  create_table "plant_sunset_zones", force: :cascade do |t|
    t.integer "sunset_zone_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_sunset_zones_on_plant_id"
    t.index ["sunset_zone_id"], name: "index_plant_sunset_zones_on_sunset_zone_id"
  end

  create_table "plant_textures", force: :cascade do |t|
    t.integer "texture_id"
    t.integer "plant_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_textures_on_plant_id"
    t.index ["texture_id"], name: "index_plant_textures_on_texture_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "genus"
    t.string "species"
    t.string "common_name"
    t.text "description"
    t.boolean "tree"
    t.boolean "shrub"
    t.boolean "fruits"
    t.boolean "ca_native"
    t.boolean "problematic"
    t.integer "height_min"
    t.integer "height_max"
    t.integer "width_min"
    t.integer "width_max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "root_damage_potentials", force: :cascade do |t|
    t.string "root_damage_potential"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salinity_tolerances", force: :cascade do |t|
    t.string "salinity_tolerance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seaside_tolerances", force: :cascade do |t|
    t.string "seaside_tolerance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string "shape"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soil_moistures", force: :cascade do |t|
    t.string "soil_moisture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soil_textures", force: :cascade do |t|
    t.string "soil_texture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sunset_zones", force: :cascade do |t|
    t.string "sunset_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textures", force: :cascade do |t|
    t.string "texture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
