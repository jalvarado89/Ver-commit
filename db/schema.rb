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

ActiveRecord::Schema.define(version: 20161128004554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignations", force: :cascade do |t|
    t.integer  "Num_Semana"
    t.string   "fecha"
    t.string   "hora"
    t.boolean  "Activo"
    t.integer  "predios_id2"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "companies_id"
    t.integer  "predios_id"
    t.integer  "planta_id"
    t.integer  "cliente_navieras_id"
    t.integer  "routes_id"
    t.integer  "navieras_id"
    t.index ["cliente_navieras_id"], name: "index_asignations_on_cliente_navieras_id", using: :btree
    t.index ["companies_id"], name: "index_asignations_on_companies_id", using: :btree
    t.index ["navieras_id"], name: "index_asignations_on_navieras_id", using: :btree
    t.index ["planta_id"], name: "index_asignations_on_planta_id", using: :btree
    t.index ["predios_id"], name: "index_asignations_on_predios_id", using: :btree
    t.index ["routes_id"], name: "index_asignations_on_routes_id", using: :btree
  end

  create_table "cliente_navieras", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "navieras_id"
    t.index ["navieras_id"], name: "index_cliente_navieras_on_navieras_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Cedula"
    t.string   "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implements", force: :cascade do |t|
    t.string   "Num_Chasis"
    t.string   "Num_Placa"
    t.string   "Empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trucks_id"
    t.index ["trucks_id"], name: "index_implements_on_trucks_id", using: :btree
  end

  create_table "navieras", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "companies_id"
    t.index ["companies_id"], name: "index_navieras_on_companies_id", using: :btree
  end

  create_table "num_contenedors", force: :cascade do |t|
    t.string   "Sigla"
    t.string   "Numero"
    t.string   "Marchamo"
    t.string   "Temperatura"
    t.integer  "Cant_Ejes"
    t.boolean  "Activo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "asignations_id"
    t.index ["asignations_id"], name: "index_num_contenedors_on_asignations_id", using: :btree
  end

  create_table "planta", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "companies_id"
    t.index ["companies_id"], name: "index_planta_on_companies_id", using: :btree
  end

  create_table "predios", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "companies_id"
    t.index ["companies_id"], name: "index_predios_on_companies_id", using: :btree
  end

  create_table "retiros", force: :cascade do |t|
    t.string   "fecha"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "asignations_id"
    t.integer  "num_contenedors_id"
    t.integer  "drivers_id"
    t.integer  "trucks_id"
    t.integer  "implements_id"
    t.index ["asignations_id"], name: "index_retiros_on_asignations_id", using: :btree
    t.index ["drivers_id"], name: "index_retiros_on_drivers_id", using: :btree
    t.index ["implements_id"], name: "index_retiros_on_implements_id", using: :btree
    t.index ["num_contenedors_id"], name: "index_retiros_on_num_contenedors_id", using: :btree
    t.index ["trucks_id"], name: "index_retiros_on_trucks_id", using: :btree
  end

  create_table "routes", force: :cascade do |t|
    t.string   "Nombre"
    t.integer  "Precio_Empresa_2Ejes"
    t.integer  "Precio_Empresa_3Ejes"
    t.integer  "Precio_Chofer"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "companies_id"
    t.index ["companies_id"], name: "index_routes_on_companies_id", using: :btree
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "Placa"
    t.string   "Modelo"
    t.string   "Marca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "drivers_id"
    t.index ["drivers_id"], name: "index_trucks_on_drivers_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "Nombre"
    t.string   "Apellidos"
    t.string   "Telefono"
    t.string   "email"
    t.string   "password_digest"
    t.string   "tipo"
    t.boolean  "Activo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "companies_id"
    t.index ["companies_id"], name: "index_users_on_companies_id", using: :btree
  end

  add_foreign_key "asignations", "cliente_navieras", column: "cliente_navieras_id"
  add_foreign_key "asignations", "companies", column: "companies_id"
  add_foreign_key "asignations", "navieras", column: "navieras_id"
  add_foreign_key "asignations", "planta", column: "planta_id"
  add_foreign_key "asignations", "predios", column: "predios_id"
  add_foreign_key "asignations", "routes", column: "routes_id"
  add_foreign_key "cliente_navieras", "navieras", column: "navieras_id"
  add_foreign_key "implements", "trucks", column: "trucks_id"
  add_foreign_key "navieras", "companies", column: "companies_id"
  add_foreign_key "num_contenedors", "asignations", column: "asignations_id"
  add_foreign_key "planta", "companies", column: "companies_id"
  add_foreign_key "predios", "companies", column: "companies_id"
  add_foreign_key "retiros", "asignations", column: "asignations_id"
  add_foreign_key "retiros", "drivers", column: "drivers_id"
  add_foreign_key "retiros", "implements", column: "implements_id"
  add_foreign_key "retiros", "num_contenedors", column: "num_contenedors_id"
  add_foreign_key "retiros", "trucks", column: "trucks_id"
  add_foreign_key "routes", "companies", column: "companies_id"
  add_foreign_key "trucks", "drivers", column: "drivers_id"
  add_foreign_key "users", "companies", column: "companies_id"
end
