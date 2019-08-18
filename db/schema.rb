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

ActiveRecord::Schema.define(version: 2019_08_18_031932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.date "date"
    t.integer "retail_id"
    t.integer "service_id"
    t.boolean "iscancel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booking_time"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "customers", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "full_name"
    t.string "profile_image"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "retails", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "address1"
    t.string "address2"
    t.string "suburb"
    t.string "postcode"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "retail_image"
    t.string "retail_name"
  end

  create_table "services", force: :cascade do |t|
    t.integer "category_id"
    t.string "title"
    t.text "description"
    t.string "service_image"
    t.integer "price"
    t.integer "duration"
    t.boolean "ispopular"
    t.integer "retail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
