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

ActiveRecord::Schema.define(version: 20150613101400) do

  create_table "distritos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "lunches", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "description",         limit: 255
    t.decimal  "price",                           precision: 10
    t.decimal  "pricemenu",                       precision: 10
    t.integer  "quantity",            limit: 4
    t.date     "fecha"
    t.integer  "tipoplato_id",        limit: 4
    t.integer  "tipomenu_id",         limit: 4
    t.integer  "restaurant_id",       limit: 4
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "imagen_file_name",    limit: 255
    t.string   "imagen_content_type", limit: 255
    t.integer  "imagen_file_size",    limit: 4
    t.datetime "imagen_updated_at"
  end

  add_index "lunches", ["restaurant_id"], name: "index_lunches_on_restaurant_id", using: :btree
  add_index "lunches", ["tipomenu_id"], name: "index_lunches_on_tipomenu_id", using: :btree
  add_index "lunches", ["tipoplato_id"], name: "index_lunches_on_tipoplato_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.decimal  "price",                   precision: 10
    t.integer  "quantity",    limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "description",     limit: 255
    t.string   "direccion",       limit: 255
    t.string   "ruc",             limit: 255
    t.string   "correo",          limit: 255
    t.string   "telefono",        limit: 255
    t.boolean  "estado",          limit: 1
    t.string   "contacto",        limit: 255
    t.boolean  "flagCriollo",     limit: 1
    t.boolean  "flagMarino",      limit: 1
    t.boolean  "flagChifa",       limit: 1
    t.boolean  "flagVegetariano", limit: 1
    t.boolean  "flagPastas",      limit: 1
    t.integer  "user_id",         limit: 4
    t.integer  "distrito_id",     limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "restaurants", ["distrito_id"], name: "index_restaurants_on_distrito_id", using: :btree
  add_index "restaurants", ["user_id"], name: "index_restaurants_on_user_id", using: :btree

  create_table "tipomenus", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "codigo",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipomenutests", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tipoplatos", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "codigo",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "tipo",                   limit: 4
    t.integer  "tipoousuario",           limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "lunches", "restaurants"
  add_foreign_key "lunches", "tipomenus"
  add_foreign_key "lunches", "tipoplatos"
  add_foreign_key "restaurants", "distritos"
  add_foreign_key "restaurants", "users"
end
