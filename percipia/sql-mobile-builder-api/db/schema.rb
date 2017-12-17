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

ActiveRecord::Schema.define(version: 20171217010702) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "companyName"
    t.string "companyLocation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grids", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "parentType"
    t.string "parentID"
    t.string "itemType"
    t.integer "itemID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "htmls", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "page"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "parentType"
    t.string "parentID"
    t.string "itemType"
    t.integer "itemID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "page_files", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
    t.string "name"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "versionTag"
    t.bigint "company_id"
    t.bigint "html_id"
    t.boolean "activeVersion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_versions_on_company_id"
    t.index ["html_id"], name: "index_versions_on_html_id"
  end

end
