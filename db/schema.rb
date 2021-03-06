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

ActiveRecord::Schema.define(version: 20190722041343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.boolean "connected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.string "channel_type"
  end

  create_table "consultants", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "email"
    t.string "twitter_handle"
    t.string "facebook_url"
    t.string "instagram_handle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "estimates", force: :cascade do |t|
    t.string "type"
    t.datetime "start"
    t.datetime "end"
    t.string "owner"
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.string "ordername"
    t.integer "ordernumber"
    t.boolean "complete"
    t.text "servicelist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "code"
    t.integer "number"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", null: false
    t.string "user_id"
    t.string "user_name"
    t.string "user_screen_name"
    t.string "user_image_url"
    t.string "tweet_id"
    t.datetime "tweet_created_at"
    t.bigint "keyword_id"
    t.datetime "updated_at", null: false
    t.index ["keyword_id", "created_at"], name: "index_tweets_on_keyword_id_and_created_at"
    t.index ["keyword_id"], name: "index_tweets_on_keyword_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type"
    t.string "name"
    t.boolean "email_confirmed", default: false
    t.string "confirm_token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
