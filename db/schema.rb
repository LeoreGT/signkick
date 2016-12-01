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


ActiveRecord::Schema.define(version: 20161130124220) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "price"
    t.integer  "deaf_user_id"
    t.integer  "interpreter_id"
    t.string   "location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["deaf_user_id"], name: "index_bookings_on_deaf_user_id", using: :btree
    t.index ["interpreter_id"], name: "index_bookings_on_interpreter_id", using: :btree
  end

  create_table "deaf_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deaf_users_on_user_id", using: :btree
  end

  create_table "interpreter_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "interpreter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["interpreter_id"], name: "index_interpreter_tags_on_interpreter_id", using: :btree
    t.index ["tag_id"], name: "index_interpreter_tags_on_tag_id", using: :btree
  end

  create_table "interpreters", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.integer  "price"
    t.string   "location"
    t.integer  "years_of_experience"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "photo"
    t.float    "overall_performance"
    t.float    "friendliness"
    t.float    "language_ability"
    t.float    "punctuality"
    t.float    "professionalism"
    t.index ["user_id"], name: "index_interpreters_on_user_id", using: :btree
  end

  create_table "language_skills", force: :cascade do |t|
    t.integer  "language_id"
    t.string   "level"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["language_id"], name: "index_language_skills_on_language_id", using: :btree
    t.index ["owner_type", "owner_id"], name: "index_language_skills_on_owner_type_and_owner_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "booking_id"
    t.integer  "language_ability"
    t.integer  "friendliness"
    t.integer  "punctuality"
    t.integer  "professionalism"
    t.integer  "overall_performance"
    t.text     "content"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "is_interpreter"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "deaf_users"
  add_foreign_key "bookings", "interpreters"
  add_foreign_key "deaf_users", "users"
  add_foreign_key "interpreter_tags", "interpreters"
  add_foreign_key "interpreter_tags", "tags"
  add_foreign_key "interpreters", "users"
  add_foreign_key "language_skills", "languages"
  add_foreign_key "reviews", "bookings"
end
