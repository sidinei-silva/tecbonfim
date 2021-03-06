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

ActiveRecord::Schema.define(version: 2018_11_23_100618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "apresentacao_dois", force: :cascade do |t|
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apresentacao_ums", force: :cascade do |t|
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "atividades", force: :cascade do |t|
    t.date "dia_atividade"
    t.time "hora_atividade"
    t.string "acontecimento"
    t.string "tema"
    t.string "envolvidos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oficinas", force: :cascade do |t|
    t.string "titulo"
    t.string "descricao"
    t.string "professor"
    t.time "inicio"
    t.time "termino"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palestras", force: :cascade do |t|
    t.string "palestrante"
    t.string "email_palestrante"
    t.string "titulo_palestra"
    t.text "desc_palestra"
    t.date "dia_palestra"
    t.time "hora_palestra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sobres", force: :cascade do |t|
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "instituicao"
    t.string "campus"
    t.string "presenca_oficina"
    t.bigint "oficina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["oficina_id"], name: "index_users_on_oficina_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "users", "oficinas"
end
