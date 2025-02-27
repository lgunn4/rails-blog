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

ActiveRecord::Schema[7.0].define(version: 2023_11_30_033045) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "handle"
    t.index ["handle"], name: "index_categories_on_handle", unique: true
  end

  create_table "categories_posts", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "post_id"
    t.index ["category_id", "post_id"], name: "index_categories_posts_on_category_id_and_post_id"
    t.index ["category_id"], name: "index_categories_posts_on_category_id"
    t.index ["post_id"], name: "index_categories_posts_on_post_id"
  end

  create_table "configurations", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "profile_picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.boolean "pinned", default: false
    t.boolean "published", default: true
    t.string "handle"
    t.index ["handle"], name: "index_posts_on_handle", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
