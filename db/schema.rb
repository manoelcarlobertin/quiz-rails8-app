# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_04_21_030912) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "pergunta", force: :cascade do |t|
    t.string "enunciado"
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_pergunta_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "titulo"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resposta", force: :cascade do |t|
    t.string "conteudo"
    t.boolean "correta"
    t.bigint "pergunta_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pergunta_id"], name: "index_resposta_on_pergunta_id"
  end

  add_foreign_key "pergunta", "quizzes"
  add_foreign_key "resposta", "pergunta", column: "pergunta_id"
end
