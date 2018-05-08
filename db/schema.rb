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

ActiveRecord::Schema.define(version: 20180424151355) do

  create_table "acs", force: :cascade do |t|
    t.string "title"
    t.string "model_no"
    t.text "description"
    t.string "capacity"
    t.float "price"
    t.string "weight"
    t.string "color"
    t.integer "brands_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brands_id"], name: "index_acs_on_brands_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "brand_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cameras", force: :cascade do |t|
    t.string "title"
    t.string "resolution"
    t.string "model_no"
    t.string "storage_type"
    t.string "mega_pixel"
    t.string "display_size"
    t.string "battery"
    t.text "description"
    t.string "weight"
    t.float "price"
    t.integer "brands_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brands_id"], name: "index_cameras_on_brands_id"
  end

  create_table "fridges", force: :cascade do |t|
    t.string "title"
    t.string "model_no"
    t.float "price"
    t.text "description"
    t.string "power"
    t.string "capacity"
    t.string "voltage"
    t.integer "brands_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brands_id"], name: "index_fridges_on_brands_id"
  end

  create_table "laptop_details", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "price"
    t.string "processor"
    t.string "hard_drive"
    t.string "ram"
    t.string "display"
    t.string "usb_ports"
    t.string "color"
    t.string "shipping_weight"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_laptop_details_on_brand_id"
  end

  create_table "microwaves", force: :cascade do |t|
    t.string "title"
    t.string "model_no"
    t.string "color"
    t.text "description"
    t.float "price"
    t.string "capacity"
    t.string "power"
    t.string "weight"
    t.integer "brands_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brands_id"], name: "index_microwaves_on_brands_id"
  end

  create_table "mobile_details", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.text "description"
    t.string "display"
    t.string "front_cam"
    t.string "back_cam"
    t.string "connectivity"
    t.string "color"
    t.string "memory"
    t.string "platform"
    t.string "operating_system"
    t.string "shipping_weight"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_mobile_details_on_brand_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "primary_cell"
    t.string "secondary_cell"
    t.string "residential_address"
    t.string "shop_address"
    t.string "gender"
    t.date "DOB"
    t.boolean "approve", default: false
    t.index ["email"], name: "index_sellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sellers_on_reset_password_token", unique: true
  end

  create_table "tv_details", force: :cascade do |t|
    t.string "name"
    t.string "display"
    t.string "screen_type"
    t.string "usb_supported"
    t.string "color"
    t.float "price"
    t.text "description"
    t.string "shipping_weight"
    t.string "connectivity"
    t.integer "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_tv_details_on_brand_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
