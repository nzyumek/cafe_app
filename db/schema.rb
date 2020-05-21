# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_21_035010) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "beantags", force: :cascade do |t|
    t.string "name"
    t.integer "cafe_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cafe_list_id"], name: "index_beantags_on_cafe_list_id"
  end

  create_table "cafe_list_beantags", force: :cascade do |t|
    t.integer "cafe_list_id", null: false
    t.integer "beantag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beantag_id"], name: "index_cafe_list_beantags_on_beantag_id"
    t.index ["cafe_list_id"], name: "index_cafe_list_beantags_on_cafe_list_id"
  end

  create_table "cafe_list_cashlesstags", force: :cascade do |t|
    t.integer "cafe_list_id", null: false
    t.integer "cashlesstag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cafe_list_id"], name: "index_cafe_list_cashlesstags_on_cafe_list_id"
    t.index ["cashlesstag_id"], name: "index_cafe_list_cashlesstags_on_cashlesstag_id"
  end

  create_table "cafe_list_images", force: :cascade do |t|
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "cafe_list_id"
    t.index ["cafe_list_id"], name: "index_cafe_list_images_on_cafe_list_id"
  end

  create_table "cafe_lists", force: :cascade do |t|
    t.string "title"
    t.string "bean"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.string "info"
    t.string "access"
    t.string "parking"
    t.string "openingtime"
    t.string "dayoff"
    t.integer "firsttel"
    t.string "envir"
    t.string "wifi"
    t.string "cashless"
    t.string "reservation"
    t.integer "user_id"
    t.string "prefecture"
    t.string "ward"
    t.integer "tel_2"
    t.integer "tel_3"
    t.integer "midtel"
    t.integer "lasttel"
  end

  create_table "cashlesstags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string "content"
    t.integer "cafe_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cafe_list_id"], name: "index_infos_on_cafe_list_id"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.text "message"
    t.string "mail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "content"
    t.integer "admin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_news_on_admin_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "cafe_list_id", null: false
    t.float "rate"
    t.text "content"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["cafe_list_id"], name: "index_reviews_on_cafe_list_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "name"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "beantags", "cafe_lists"
  add_foreign_key "cafe_list_beantags", "beantags"
  add_foreign_key "cafe_list_beantags", "cafe_lists"
  add_foreign_key "cafe_list_cashlesstags", "cafe_lists"
  add_foreign_key "cafe_list_cashlesstags", "cashlesstags"
  add_foreign_key "cafe_list_images", "cafe_lists"
  add_foreign_key "infos", "cafe_lists"
  add_foreign_key "news", "admins"
  add_foreign_key "reviews", "cafe_lists"
end
