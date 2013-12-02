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

ActiveRecord::Schema.define(version: 20131201175606) do

  create_table "pages", force: true do |t|
    t.integer  "wiki_id"
    t.integer  "article_id"
    t.string   "title"
    t.string   "url"
    t.string   "lang"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phrases", force: true do |t|
    t.string   "text"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "weight",      default: 1.0
  end

  create_table "queries", force: true do |t|
    t.integer  "run_id"
    t.string   "url"
    t.text     "response"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phrase_id"
  end

  create_table "query_results", force: true do |t|
    t.integer  "query_id"
    t.integer  "page_id"
    t.integer  "result_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: true do |t|
    t.integer  "page_id"
    t.integer  "phrase_id"
    t.float    "score",      default: 0.0, null: false
    t.text     "comment"
    t.string   "who"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "runs", force: true do |t|
    t.string   "root_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
