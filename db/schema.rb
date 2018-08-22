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

ActiveRecord::Schema.define(version: 2018_08_17_171331) do

  create_table "capacities", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "tipoest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gcapacities", force: :cascade do |t|
    t.string "descripcion"
    t.integer "User_id"
    t.integer "Capacity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Capacity_id"], name: "index_gcapacities_on_Capacity_id"
    t.index ["User_id"], name: "index_gcapacities_on_User_id"
  end

  create_table "gservices", force: :cascade do |t|
    t.string "descripcion"
    t.integer "User_id"
    t.integer "Service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Service_id"], name: "index_gservices_on_Service_id"
    t.index ["User_id"], name: "index_gservices_on_User_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "localidad"
    t.string "ciudad"
    t.string "telefono"
    t.float "latitud"
    t.float "longitud"
    t.string "horario"
    t.boolean "estado"
    t.string "web"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_places_on_category_id"
  end

  create_table "results", force: :cascade do |t|
    t.string "valor"
    t.integer "User_id"
    t.integer "Place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Place_id"], name: "index_results_on_Place_id"
    t.index ["User_id"], name: "index_results_on_User_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "documento"
    t.string "tipodoc"
    t.string "telefono"
    t.string "rol"
    t.boolean "estado"
    t.string "descripcion"
    t.string "calificacion"
    t.boolean "estadoGuia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
