# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_30_175737) do

  create_table "exercises", force: :cascade do |t|
    t.string "description"
    t.string "type_of_exercise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favourites", force: :cascade do |t|
    t.date "date"
    t.integer "user_id", null: false
    t.integer "plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plan_id"], name: "index_favourites_on_plan_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "plan_name"
    t.boolean "published"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "plans_exercises", id: false, force: :cascade do |t|
    t.integer "plan_id"
    t.integer "exercise_id"
    t.index ["exercise_id"], name: "index_plans_exercises_on_exercise_id"
    t.index ["plan_id"], name: "index_plans_exercises_on_plan_id"
  end

  create_table "trainings", force: :cascade do |t|
    t.date "date"
    t.float "status"
    t.integer "user_id", null: false
    t.integer "plan_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plan_id"], name: "index_trainings_on_plan_id"
    t.index ["user_id"], name: "index_trainings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "favourites", "plans"
  add_foreign_key "favourites", "users"
  add_foreign_key "plans", "users"
  add_foreign_key "trainings", "plans"
  add_foreign_key "trainings", "users"
end
