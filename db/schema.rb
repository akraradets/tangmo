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

ActiveRecord::Schema.define(version: 5) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "farmers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "firstName"
    t.string "lastName"
    t.date "dateOfBirth"
    t.string "group"
    t.string "phone"
    t.string "email"
    t.string "facebook"
    t.string "line"
    t.string "addressNo"
    t.string "addressMoo"
    t.string "addressTambon"
    t.string "addressAmphoe"
    t.string "addressProvince"
    t.string "addressZipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plots", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "farmer_id"
    t.float "areaRai"
    t.integer "treeCount"
    t.string "breed"
    t.string "project"
    t.string "certificate"
    t.string "certificateDate"
    t.string "harvestPeriod"
    t.string "harvestQuantity"
    t.string "price"
    t.string "plotManagement"
    t.string "fertilizeManagement"
    t.string "waterManagement"
    t.string "illnessManagement"
    t.string "harvestManagement"
    t.string "sellingChannel"
    t.string "logistic"
    t.string "addressNo"
    t.string "addressMoo"
    t.string "addressTambon"
    t.string "addressAmphoe"
    t.string "addressProvince"
    t.string "addressZipcode"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "polygon", limit: 5000, default: "[]", null: false
    t.index ["farmer_id"], name: "index_plots_on_farmer_id"
    t.index ["lat", "long"], name: "index_plots_on_lat_and_long"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "username", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "plots", "farmers"
end
