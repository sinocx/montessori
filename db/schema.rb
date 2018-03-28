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

ActiveRecord::Schema.define(version: 20180328115841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "child_no_valids", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.string "gender"
    t.string "nursery"
    t.text "montessori_before"
    t.string "nationality"
    t.string "first_lang"
    t.string "snd_lang"
    t.string "workshop"
    t.string "comment"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_child_no_valids_on_subscription_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "subject"
    t.string "full_name_parent"
    t.string "child_full_name"
    t.string "child_birth_date"
    t.string "child_first_lang"
    t.string "phone"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "more_infos", force: :cascade do |t|
    t.string "know_the_school"
    t.string "start_date"
    t.string "reason_why"
    t.string "child_atmosphere"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_more_infos_on_subscription_id"
  end

  create_table "parent_no_valids", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "lang"
    t.string "situation"
    t.string "job"
    t.string "fiscal"
    t.string "address"
    t.string "zip_code"
    t.string "city"
    t.string "phone"
    t.string "mobile"
    t.string "role"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subscription_id"], name: "index_parent_no_valids_on_subscription_id"
  end

  create_table "second_forms", force: :cascade do |t|
    t.integer "nursery"
    t.integer "canteen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workshop"
    t.bigint "subscription_id"
    t.index ["subscription_id"], name: "index_second_forms_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "child_no_valids", "subscriptions"
  add_foreign_key "more_infos", "subscriptions"
  add_foreign_key "parent_no_valids", "subscriptions"
  add_foreign_key "second_forms", "subscriptions"
end
