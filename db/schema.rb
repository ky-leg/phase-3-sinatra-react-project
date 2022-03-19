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

ActiveRecord::Schema.define(version: 2022_03_19_195503) do

  create_table "articles", force: :cascade do |t|
    t.string "type"
    t.string "material"
    t.string "color"
    t.string "size"
    t.integer "customer_id"
    t.integer "brand_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "origin"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "body"
    t.integer "rating"
    t.integer "customer_id"
    t.integer "article_id"
  end

end
