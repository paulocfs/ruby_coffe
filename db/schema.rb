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

ActiveRecord::Schema[7.1].define(version: 2024_03_25_170840) do
  create_table "admins", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "fisrt_name", limit: 50
    t.string "last_name", limit: 50
    t.string "status_on", limit: 50
    t.string "uid", limit: 300
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "fisrt_name", limit: 50
    t.string "last_name", limit: 50
    t.string "profession", limit: 50
    t.string "uid_google", limit: 300
    t.string "avatar_url_google", limit: 300
    t.boolean "active", default: true
    t.datetime "deleted_at"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "newsletters", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", limit: 50, null: false
    t.boolean "active", default: true, null: false
    t.boolean "adm_notified", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_newsletters_on_email", unique: true
  end

  create_table "offers", charset: "utf8mb4", force: :cascade do |t|
    t.date "initial_date", null: false
    t.date "final_date", null: false
    t.text "description", size: :tiny, null: false
    t.string "day_week", limit: 20, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.string "name", limit: 50, null: false
    t.string "description", limit: 100, null: false
    t.decimal "price", precision: 5, scale: 2, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "reservations", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "table_id", null: false
    t.bigint "client_id", null: false
    t.decimal "price_hour", precision: 5, scale: 2, null: false
    t.date "date", null: false
    t.time "hour", null: false
    t.integer "number_persons", null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_reservations_on_client_id"
    t.index ["table_id"], name: "index_reservations_on_table_id"
  end

  create_table "services", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.text "description", size: :tiny, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string "phone", limit: 20, null: false
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

  create_table "tables", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.integer "total_persons", null: false
    t.text "description", size: :tiny, null: false
    t.boolean "active", null: false
    t.datetime "deleted_at", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.text "body", size: :tiny
    t.boolean "read_admin", default: false, null: false
    t.boolean "active", default: true, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_testimonials_on_client_id"
  end

  add_foreign_key "products", "categories"
  add_foreign_key "reservations", "clients"
  add_foreign_key "reservations", "tables"
  add_foreign_key "testimonials", "clients"
end
