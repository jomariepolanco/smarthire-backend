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

ActiveRecord::Schema.define(version: 2021_01_19_130005) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidate_calls", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.text "notes"
    t.integer "user_id"
    t.integer "candidate_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "cell_phone"
    t.string "home_phone"
    t.string "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notes"
  end

  create_table "client_calls", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.text "notes"
    t.integer "user_id"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "industry"
    t.string "address"
    t.string "poc_name"
    t.string "poc_email"
    t.string "poc_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "notes"
  end

  create_table "job_applications", force: :cascade do |t|
    t.integer "candidate_id"
    t.integer "open_job_id"
    t.boolean "red", default: false
    t.boolean "yellow", default: false
    t.boolean "green", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "open_jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "pay"
    t.date "due_date"
    t.integer "user_id"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "archived"
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "archived"
    t.string "date"
    t.integer "project_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
