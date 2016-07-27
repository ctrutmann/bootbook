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

ActiveRecord::Schema.define(version: 20160723200402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.string   "campus"
    t.date     "graduation_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "conversation_varieties", force: :cascade do |t|
    t.string   "variety"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.integer  "conversation_variety_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "follows", force: :cascade do |t|
    t.integer  "followee_id"
    t.integer  "follower_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "interests", force: :cascade do |t|
    t.string   "interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "conversation_id"
    t.boolean  "read",            default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "post_varieties", force: :cascade do |t|
    t.string   "variety"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.string   "post_variety_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_cohorts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "uid"
    t.string   "provider"
    t.string   "name"
    t.string   "email"
    t.string   "profile_image"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.date     "graduation_date"
    t.boolean  "is_admin",                default: false
    t.string   "love"
    t.string   "quirk"
    t.boolean  "is_graduate",             default: false
    t.string   "linkedin"
    t.string   "github"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "employ"
    t.string   "personal_website"
    t.string   "employment_status",       default: "Unemployed"
    t.string   "employer"
    t.string   "role"
    t.boolean  "willing_to_mentor",       default: true
    t.boolean  "willing_to_collaborate",  default: true
    t.boolean  "female_scholarship",      default: false
    t.boolean  "poc_scholarship",         default: false
    t.boolean  "lgbtq_scholarship",       default: false
    t.boolean  "veteran_scholarship",     default: false
    t.string   "prior_coding_experience"
    t.text     "bio"
    t.text     "advice_to_students"
    t.text     "advice_to_graduates"
  end

end
