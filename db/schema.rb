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

ActiveRecord::Schema.define(version: 20171102213955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consolidados", force: :cascade do |t|
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ficha_id"
    t.bigint "contrato_id"
    t.boolean "entregada?"
    t.decimal "valor_total"
    t.index ["contrato_id"], name: "index_consolidados_on_contrato_id"
    t.index ["ficha_id"], name: "index_consolidados_on_ficha_id"
    t.index ["teacher_id"], name: "index_consolidados_on_teacher_id"
  end

  create_table "contratos", force: :cascade do |t|
    t.string "numero"
    t.date "fecha_contrato_at"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "valor_total", default: "0.0"
  end

  create_table "detalles", force: :cascade do |t|
    t.bigint "producto_id"
    t.decimal "cantidad"
    t.bigint "consolidado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "observacion"
    t.decimal "valor_total"
    t.index ["consolidado_id"], name: "index_detalles_on_consolidado_id"
    t.index ["producto_id", "consolidado_id"], name: "index_detalles_on_producto_id_and_consolidado_id", unique: true
    t.index ["producto_id"], name: "index_detalles_on_producto_id"
  end

  create_table "fichas", force: :cascade do |t|
    t.bigint "program_id"
    t.date "fecha_inicio_at"
    t.date "fecha_fin_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ficha"
    t.index ["program_id"], name: "index_fichas_on_program_id"
  end

  create_table "fichas_teachers", id: false, force: :cascade do |t|
    t.bigint "ficha_id"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ficha_id"], name: "index_fichas_teachers_on_ficha_id"
    t.index ["teacher_id"], name: "index_fichas_teachers_on_teacher_id"
  end

  create_table "medidas", force: :cascade do |t|
    t.string "medida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "descripcion"
    t.bigint "medida_id"
    t.decimal "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medida_id"], name: "index_productos_on_medida_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "nombre"
    t.string "contrato"
    t.string "celular"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "consolidados", "contratos"
  add_foreign_key "consolidados", "fichas"
  add_foreign_key "consolidados", "teachers"
  add_foreign_key "detalles", "consolidados"
  add_foreign_key "detalles", "productos"
  add_foreign_key "fichas", "programs"
  add_foreign_key "fichas_teachers", "fichas"
  add_foreign_key "fichas_teachers", "teachers"
  add_foreign_key "productos", "medidas"
end
