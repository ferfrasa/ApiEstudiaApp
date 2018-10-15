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

ActiveRecord::Schema.define(version: 20181015044936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name_activity"
    t.text "description_activity"
    t.datetime "fecha_activity"
    t.string "lugar_activity"
    t.bigint "status_activity_id"
    t.bigint "type_activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_activities_on_project_id"
    t.index ["status_activity_id"], name: "index_activities_on_status_activity_id"
    t.index ["type_activity_id"], name: "index_activities_on_type_activity_id"
  end

  create_table "appreciations", force: :cascade do |t|
    t.integer "calificacion"
    t.string "comentario"
    t.bigint "user_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_appreciations_on_activity_id"
    t.index ["user_id"], name: "index_appreciations_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_category"], name: "index_categories_on_name_category", unique: true
  end

  create_table "has_project_tags", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_has_project_tags_on_project_id"
    t.index ["tag_id"], name: "index_has_project_tags_on_tag_id"
  end

  create_table "has_user_projects", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "project_id"
    t.boolean "rol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: true
    t.index ["project_id"], name: "index_has_user_projects_on_project_id"
    t.index ["user_id"], name: "index_has_user_projects_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name_project"
    t.text "description_project"
    t.string "code_project"
    t.boolean "status_project", default: true
    t.float "prom_calif_project", default: 0.0
    t.bigint "category_id"
    t.bigint "spectator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_projects_on_category_id"
    t.index ["spectator_id"], name: "index_projects_on_spectator_id"
  end

  create_table "pruebas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spectators", force: :cascade do |t|
    t.string "name_spectator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_spectator"], name: "index_spectators_on_name_spectator", unique: true
  end

  create_table "status_activities", force: :cascade do |t|
    t.string "name_status_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_status_activity"], name: "index_status_activities_on_name_status_activity", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name_tag"
    t.string "color_tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_tag"], name: "index_tags_on_name_tag", unique: true
  end

  create_table "type_activities", force: :cascade do |t|
    t.string "name_type_activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_type_activity"], name: "index_type_activities_on_name_type_activity", unique: true
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_universities_on_name", unique: true
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_user_types_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "doc"
    t.string "password_digest"
    t.bigint "user_type_id"
    t.integer "university_id", default: 5
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.boolean "status_user", default: true
    t.string "id_firebase"
    t.index ["token"], name: "index_users_on_token"
    t.index ["university_id"], name: "index_users_on_university_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "activities", "projects"
  add_foreign_key "activities", "status_activities"
  add_foreign_key "activities", "type_activities"
  add_foreign_key "appreciations", "activities"
  add_foreign_key "appreciations", "users"
  add_foreign_key "has_project_tags", "projects"
  add_foreign_key "has_project_tags", "tags"
  add_foreign_key "has_user_projects", "projects"
  add_foreign_key "has_user_projects", "users"
  add_foreign_key "projects", "categories"
  add_foreign_key "projects", "spectators"
  add_foreign_key "users", "universities"
  add_foreign_key "users", "user_types"
end
