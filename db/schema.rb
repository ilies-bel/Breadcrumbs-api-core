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

ActiveRecord::Schema.define(version: 2021_01_30_204420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "interview_milestone_id", null: false
    t.bigint "user_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "note"
    t.boolean "is_confirmed"
    t.boolean "is_completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interview_milestone_id"], name: "index_appointments_on_interview_milestone_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "business_fields", force: :cascade do |t|
    t.string "field_name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interview_milestones", force: :cascade do |t|
    t.bigint "interview_process_id", null: false
    t.bigint "interview_type_id", null: false
    t.string "milestone_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["interview_process_id"], name: "index_interview_milestones_on_interview_process_id"
    t.index ["interview_type_id"], name: "index_interview_milestones_on_interview_type_id"
  end

  create_table "interview_processes", force: :cascade do |t|
    t.string "process_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interview_types", force: :cascade do |t|
    t.bigint "business_field_id", null: false
    t.string "title"
    t.string "description"
    t.integer "estimated_time_length"
    t.integer "min_time_before_next"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_field_id"], name: "index_interview_types_on_business_field_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "profile_picture_id"
    t.string "mail"
    t.string "role"
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mail"], name: "index_users_on_mail", unique: true
  end

  add_foreign_key "appointments", "interview_milestones"
  add_foreign_key "appointments", "users"
  add_foreign_key "availabilities", "users"
  add_foreign_key "interview_milestones", "interview_processes"
  add_foreign_key "interview_milestones", "interview_types"
  add_foreign_key "interview_types", "business_fields"
end