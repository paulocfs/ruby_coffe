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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_130741) do
  create_table "store_abouts", charset: "utf8mb4", force: :cascade do |t|
    t.text "vision", size: :tiny, null: false
    t.text "history", size: :tiny, null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_addresses", charset: "utf8mb4", force: :cascade do |t|
    t.string "cep", limit: 10, null: false
    t.string "street", limit: 100, null: false
    t.string "number", limit: 50, null: false
    t.string "neighborhood", limit: 50, null: false
    t.string "state", limit: 5, null: false
    t.string "country", limit: 75, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_emails", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", limit: 50, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_store_emails_on_email", unique: true
  end

  create_table "store_hours", charset: "utf8mb4", force: :cascade do |t|
    t.string "monday", limit: 30, default: "close", null: false
    t.string "tuesday", limit: 30, default: "close", null: false
    t.string "wednesday", limit: 30, default: "close", null: false
    t.string "thursday", limit: 30, default: "close", null: false
    t.string "friday", limit: 30, default: "close", null: false
    t.string "saturday", limit: 30, default: "close", null: false
    t.string "sunday", limit: 30, default: "close", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_phones", charset: "utf8mb4", force: :cascade do |t|
    t.string "phone", limit: 15, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_social_media", charset: "utf8mb4", force: :cascade do |t|
    t.string "url", limit: 100, null: false
    t.string "name", limit: 50, null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.date "date_inauguration", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
