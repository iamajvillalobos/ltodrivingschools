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

ActiveRecord::Schema.define(version: 2021_02_28_084929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schools", force: :cascade do |t|
    t.text "region"
    t.text "province"
    t.text "name"
    t.text "address"
    t.text "contact_number"
    t.text "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "motorcycle"
    t.boolean "light"
    t.boolean "heavy"
    t.index ["category"], name: "index_schools_on_category"
    t.index ["name"], name: "index_schools_on_name"
    t.index ["province"], name: "index_schools_on_province"
    t.index ["region"], name: "index_schools_on_region"
  end

end
