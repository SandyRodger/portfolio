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

ActiveRecord::Schema[8.0].define(version: 2025_12_04_130559) do
  create_table "contributions", force: :cascade do |t|
    t.string "project_name"
    t.string "repo_url"
    t.string "pr_url"
    t.string "description"
    t.string "tech_stack"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "short_description"
    t.text "description"
    t.string "tech_stack"
    t.string "github_url"
    t.string "live_url"
    t.integer "kind"
    t.boolean "highlight"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
