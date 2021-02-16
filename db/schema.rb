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

ActiveRecord::Schema.define(version: 2021_02_16_173100) do

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_classrooms_on_year_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.integer "term_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["term_id"], name: "index_exams_on_term_id"
  end

  create_table "marks", force: :cascade do |t|
    t.string "mark"
    t.integer "result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["result_id"], name: "index_marks_on_result_id"
  end

  create_table "results", force: :cascade do |t|
    t.integer "stream_id"
    t.integer "subject_id"
    t.integer "exam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_results_on_exam_id"
    t.index ["stream_id"], name: "index_results_on_stream_id"
    t.index ["subject_id"], name: "index_results_on_subject_id"
  end

  create_table "streams", force: :cascade do |t|
    t.string "name"
    t.integer "classroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_streams_on_classroom_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "adm_no"
    t.string "first_name"
    t.string "last_name"
    t.integer "classroom_id"
    t.integer "stream_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classroom_id"], name: "index_students_on_classroom_id"
    t.index ["stream_id"], name: "index_students_on_stream_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "code"
    t.string "short"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terms", force: :cascade do |t|
    t.string "name"
    t.integer "year_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["year_id"], name: "index_terms_on_year_id"
  end

  create_table "years", force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
