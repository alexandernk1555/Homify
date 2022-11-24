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

ActiveRecord::Schema[7.0].define(version: 2022_11_24_075902) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.integer "price"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.string "address"
    t.string "photos"
    t.text "description"
    t.string "property_type"
    t.integer "area_size"
    t.integer "floor"
    t.boolean "garden"
    t.integer "balcony"
    t.boolean "parking"
    t.string "family_status"
    t.string "occupation"
    t.boolean "pets"
    t.boolean "lift"
    t.boolean "furnished"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.bigint "search_id"
    t.bigint "user_id", null: false
    t.index ["listing_id"], name: "index_matches_on_listing_id"
    t.index ["search_id"], name: "index_matches_on_search_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_messages_on_match_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.integer "price"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.string "address"
    t.string "photos"
    t.text "description"
    t.string "property_type"
    t.integer "area_size"
    t.integer "floor"
    t.boolean "garden"
    t.integer "balcony"
    t.boolean "parking"
    t.string "family_status"
    t.string "occupation"
    t.boolean "pets"
    t.boolean "lift"
    t.boolean "furnished"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "profile_picture"
    t.string "gender"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewings", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.bigint "match_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_viewings_on_match_id"
  end

  add_foreign_key "listings", "users"
  add_foreign_key "matches", "listings"
  add_foreign_key "matches", "searches"
  add_foreign_key "matches", "users"
  add_foreign_key "messages", "matches"
  add_foreign_key "messages", "users"
  add_foreign_key "searches", "users"
  add_foreign_key "viewings", "matches"
end
