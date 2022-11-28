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

ActiveRecord::Schema[7.0].define(version: 2022_11_28_155600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "spot_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_bookmarks_on_spot_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.string "video"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "spot_id", null: false
    t.bigint "user_id", null: false
    t.float "rating"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_reviews_on_spot_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "spot_moves", force: :cascade do |t|
    t.bigint "move_id", null: false
    t.bigint "spot_id", null: false
    t.string "move_difficulty"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_id"], name: "index_spot_moves_on_move_id"
    t.index ["spot_id"], name: "index_spot_moves_on_spot_id"
  end

  create_table "spots", force: :cascade do |t|
    t.string "address"
    t.string "spot_difficulty"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id", null: false
    t.string "photo_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "photo"
    t.text "bio"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "spots"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "reviews", "spots"
  add_foreign_key "reviews", "users"
  add_foreign_key "spot_moves", "moves"
  add_foreign_key "spot_moves", "spots"
  add_foreign_key "spots", "users"
end
