# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160201103030) do

  create_table "admins", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.string   "email",                  limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "article_tags", force: :cascade do |t|
    t.integer "article_id", limit: 4
    t.integer "tag_id",     limit: 4
  end

  add_index "article_tags", ["article_id"], name: "article_id", using: :btree
  add_index "article_tags", ["tag_id"], name: "tag_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "category_id", limit: 4
    t.text     "text",        limit: 65535
    t.string   "photo",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "author",      limit: 255
  end

  add_index "articles", ["category_id"], name: "category_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "comment",    limit: 255
    t.integer  "article_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "comments", ["article_id"], name: "fk_rails_3bf61a60d3", using: :btree

  create_table "event_galleries", force: :cascade do |t|
    t.integer  "event_id",   limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "event_photos", force: :cascade do |t|
    t.string  "photo",            limit: 255
    t.integer "event_gallery_id", limit: 4
    t.string  "caption",          limit: 255, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "photo",       limit: 255,   null: false
    t.datetime "date"
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "product_id", limit: 4
  end

  create_table "people", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "about",      limit: 65535
    t.string   "photo",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "team_id",    limit: 4
  end

  create_table "photos", force: :cascade do |t|
    t.string   "photo",      limit: 255
    t.integer  "gallery_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "caption",    limit: 65535
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.text     "description",       limit: 65535
    t.string   "photo",             limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "link",              limit: 255
    t.string   "short_description", limit: 255
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "photo",       limit: 255
    t.text     "description", limit: 65535
    t.date     "date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "tag",        limit: 255
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.string   "photo",       limit: 255
    t.string   "designation", limit: 255,   null: false
    t.text     "text",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "username",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "article_tags", "articles", name: "article_tags_ibfk_1"
  add_foreign_key "articles", "categories", name: "articles_ibfk_1"
  add_foreign_key "comments", "articles"
end
