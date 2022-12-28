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

ActiveRecord::Schema[7.0].define(version: 2022_12_28_221318) do
  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "authors"
    t.date "publish_date"
    t.integer "pages"
    t.text "abstract"
    t.string "keywords"
    t.string "url"
    t.string "ids"
    t.string "type"
    t.string "journal_name"
    t.string "volume"
    t.string "issue"
    t.string "proceedings"
    t.string "place"
    t.string "edition"
    t.string "publisher"
    t.string "departement"
    t.string "university"
    t.string "thesis_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
