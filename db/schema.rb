# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_26_101634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "batch_menus", force: :cascade do |t|
    t.string "name"
    t.integer "nb_of_people"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "monday_lunch"
    t.boolean "monday_dinner"
    t.boolean "tuesday_lunch"
    t.boolean "tuesday_dinner"
    t.boolean "wednesday_lunch"
    t.boolean "wednesday_dinner"
    t.boolean "thursday_lunch"
    t.boolean "thursday_dinner"
    t.boolean "friday_lunch"
    t.boolean "friday_dinner"
    t.boolean "saturday_lunch"
    t.boolean "saturday_dinner"
    t.boolean "sunday_lunch"
    t.boolean "sunday_dinner"
    t.index ["user_id"], name: "index_batch_menus_on_user_id"
  end

  create_table "ingredient_quantities", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "ingredient_id", null: false
    t.bigint "preparation_step_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prep_code"
    t.integer "ingredient_code"
    t.index ["ingredient_id"], name: "index_ingredient_quantities_on_ingredient_id"
    t.index ["preparation_step_id"], name: "index_ingredient_quantities_on_preparation_step_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "category"
    t.string "name"
    t.integer "unit_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ingredient_code"
  end

  create_table "preparation_steps", force: :cascade do |t|
    t.string "content"
    t.integer "action_verb", default: 0
    t.integer "time", default: 0
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "recipe_code"
    t.integer "prep_code"
    t.index ["action_verb"], name: "index_preparation_steps_on_action_verb"
    t.index ["recipe_id"], name: "index_preparation_steps_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "recipe_code"
  end

  create_table "recipes_lists", force: :cascade do |t|
    t.bigint "batch_menu_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "meal_time"
    t.index ["batch_menu_id"], name: "index_recipes_lists_on_batch_menu_id"
    t.index ["recipe_id"], name: "index_recipes_lists_on_recipe_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "batch_menus", "users"
  add_foreign_key "ingredient_quantities", "ingredients"
  add_foreign_key "ingredient_quantities", "preparation_steps"
  add_foreign_key "preparation_steps", "recipes"
  add_foreign_key "recipes_lists", "batch_menus"
  add_foreign_key "recipes_lists", "recipes"
end
