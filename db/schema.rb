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

ActiveRecord::Schema.define(version: 2021_11_22_162001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batch_menus", force: :cascade do |t|
    t.string "name"
    t.integer "nb_of_people"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "nb_of_meals"
    t.index ["user_id"], name: "index_batch_menus_on_user_id"
  end

  create_table "ingredient_quantities", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "ingredient_id", null: false
    t.bigint "preparation_step_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_ingredient_quantities_on_ingredient_id"
    t.index ["preparation_step_id"], name: "index_ingredient_quantities_on_preparation_step_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "category"
    t.string "name"
    t.integer "unit_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preparation_steps", force: :cascade do |t|
    t.string "content"
    t.integer "action_verb", default: 0
    t.time "time"
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["action_verb"], name: "index_preparation_steps_on_action_verb"
    t.index ["recipe_id"], name: "index_preparation_steps_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.time "prep_time"
    t.time "cooking_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes_lists", force: :cascade do |t|
    t.bigint "batch_menu_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "batch_menus", "users"
  add_foreign_key "ingredient_quantities", "ingredients"
  add_foreign_key "ingredient_quantities", "preparation_steps"
  add_foreign_key "preparation_steps", "recipes"
  add_foreign_key "recipes_lists", "batch_menus"
  add_foreign_key "recipes_lists", "recipes"
end
