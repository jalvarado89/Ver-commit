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

ActiveRecord::Schema.define(version: 20160921052026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignations", force: :cascade do |t|
    t.serial   "Cod_Asignacion",     null: false
    t.integer  "Num_Semana"
    t.string   "Fecha_Colocacion"
    t.string   "Hora_Colocacion"
    t.boolean  "Activo"
    t.integer  "Cod_Empresa"
    t.integer  "Cod_Predio_Retiro"
    t.integer  "Cod_Predio_Entrega"
    t.integer  "Cod_Planta"
    t.integer  "Cod_Naviera"
    t.integer  "Cod_Cliente"
    t.integer  "Cod_Ruta"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "cliente_navieras", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.integer  "Id_Naviera"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Cedula"
    t.string   "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implements", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Num_Chasis"
    t.string   "Num_Placa"
    t.string   "Empresa"
    t.string   "Id_Camion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navieras", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.integer  "Id_Empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "num_contenedors", force: :cascade do |t|
    t.serial   "Id",             null: false
    t.string   "Sigla"
    t.string   "Numero"
    t.string   "Marchamo"
    t.string   "Temperatura"
    t.integer  "Cant_Ejes"
    t.boolean  "Activo"
    t.integer  "Cod_Asignacion"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "planta", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.integer  "Id_Empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "predios", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Telefono"
    t.string   "Correo"
    t.string   "Direccion"
    t.integer  "Id_Empresa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.serial   "Id",             null: false
    t.string   "Nombre"
    t.integer  "Precio_Empresa"
    t.integer  "Precio_Chofer"
    t.integer  "Id_Empresa"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.serial   "Id",         null: false
    t.string   "Placa"
    t.string   "Modelo"
    t.string   "Marca"
    t.integer  "Driver_Id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.serial   "Id",         null: false
    t.string   "Nombre"
    t.string   "Apellidos"
    t.string   "Empresa"
    t.string   "Telefono"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
