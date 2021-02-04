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

ActiveRecord::Schema.define(version: 2021_02_03_220959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer "street_number"
    t.integer "street_name"
    t.string "street_type"
    t.integer "zip_code"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ambassadors", force: :cascade do |t|
    t.bigint "collaborator_id", null: false
    t.bigint "message_feed_id", null: false
    t.string "catch_phrase"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collaborator_id"], name: "index_ambassadors_on_collaborator_id"
    t.index ["message_feed_id"], name: "index_ambassadors_on_message_feed_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "interview_milestone_id", null: false
    t.bigint "candidate_id", null: false
    t.bigint "meeting_room_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "note"
    t.boolean "is_confirmed"
    t.boolean "is_completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_appointments_on_candidate_id"
    t.index ["interview_milestone_id"], name: "index_appointments_on_interview_milestone_id"
    t.index ["meeting_room_id"], name: "index_appointments_on_meeting_room_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "collaborator_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collaborator_id"], name: "index_availabilities_on_collaborator_id"
  end

  create_table "business_fields", force: :cascade do |t|
    t.string "field_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "business_titles", force: :cascade do |t|
    t.bigint "business_field_id", null: false
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_field_id"], name: "index_business_titles_on_business_field_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "interview_processe_id", null: false
    t.bigint "business_title_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_title_id"], name: "index_candidates_on_business_title_id"
    t.index ["interview_processe_id"], name: "index_candidates_on_interview_processe_id"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "collaborators", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "business_title_id", null: false
    t.bigint "office_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_title_id"], name: "index_collaborators_on_business_title_id"
    t.index ["office_id"], name: "index_collaborators_on_office_id"
    t.index ["user_id"], name: "index_collaborators_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.string "social_network"
    t.string "title"
    t.string "link"
    t.integer "logo_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_contacts_on_users_id"
  end

  create_table "geolocations", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_geolocations_on_address_id"
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

  create_table "interview_tips", force: :cascade do |t|
    t.integer "ranking"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interview_types", force: :cascade do |t|
    t.bigint "business_field_id", null: false
    t.string "title"
    t.text "description"
    t.integer "estimated_time_length"
    t.integer "min_time_before_next"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_field_id"], name: "index_interview_types_on_business_field_id"
  end

  create_table "meeting_rooms", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.string "name"
    t.string "how_do_i_get_there"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["office_id"], name: "index_meeting_rooms_on_office_id"
  end

  create_table "message_feeds", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "message_feed_id", null: false
    t.text "content"
    t.datetime "posted_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["message_feed_id"], name: "index_messages_on_message_feed_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "offices", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.string "name"
    t.boolean "isHeadquarters"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_offices_on_address_id"
  end

  create_table "qualifiers", force: :cascade do |t|
    t.string "qualifier_name"
    t.integer "select_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resting_places", force: :cascade do |t|
    t.bigint "office_id", null: false
    t.bigint "geolocation_id", null: false
    t.integer "ranking"
    t.string "title"
    t.text "description"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["geolocation_id"], name: "index_resting_places_on_geolocation_id"
    t.index ["office_id"], name: "index_resting_places_on_office_id"
  end

  create_table "social_posts", force: :cascade do |t|
    t.datetime "posted_date"
    t.string "social_network"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "primary_color"
    t.string "secondary_color"
    t.string "logo_url"
    t.string "splash_logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "profile_picture_id"
    t.string "mail"
    t.string "role"
    t.boolean "push_notification"
    t.boolean "mail_notification"
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mail"], name: "index_users_on_mail", unique: true
  end

  add_foreign_key "ambassadors", "collaborators"
  add_foreign_key "ambassadors", "message_feeds"
  add_foreign_key "appointments", "candidates"
  add_foreign_key "appointments", "interview_milestones"
  add_foreign_key "appointments", "meeting_rooms"
  add_foreign_key "availabilities", "collaborators"
  add_foreign_key "business_titles", "business_fields"
  add_foreign_key "candidates", "business_titles"
  add_foreign_key "candidates", "interview_processes", column: "interview_processe_id"
  add_foreign_key "candidates", "users"
  add_foreign_key "collaborators", "business_titles"
  add_foreign_key "collaborators", "offices"
  add_foreign_key "collaborators", "users"
  add_foreign_key "contacts", "users", column: "users_id"
  add_foreign_key "geolocations", "addresses"
  add_foreign_key "interview_milestones", "interview_processes"
  add_foreign_key "interview_milestones", "interview_types"
  add_foreign_key "interview_types", "business_fields"
  add_foreign_key "meeting_rooms", "offices"
  add_foreign_key "messages", "message_feeds"
  add_foreign_key "messages", "users"
  add_foreign_key "offices", "addresses"
  add_foreign_key "resting_places", "geolocations"
  add_foreign_key "resting_places", "offices"
end
