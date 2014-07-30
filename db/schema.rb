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

ActiveRecord::Schema.define(version: 20140724213540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.string   "cartao"
    t.string   "nome"
    t.date     "data_nasc"
    t.text     "obs"
    t.string   "rua"
    t.decimal  "acumulado"
    t.boolean  "activo"
    t.integer  "profissao_id"
    t.integer  "grupocliente_id"
    t.integer  "localidade_id"
    t.integer  "loja_id"
    t.integer  "vendedor_id"
    t.integer  "sexo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["grupocliente_id"], name: "index_clientes_on_grupocliente_id", using: :btree
  add_index "clientes", ["localidade_id"], name: "index_clientes_on_localidade_id", using: :btree
  add_index "clientes", ["loja_id"], name: "index_clientes_on_loja_id", using: :btree
  add_index "clientes", ["profissao_id"], name: "index_clientes_on_profissao_id", using: :btree
  add_index "clientes", ["sexo_id"], name: "index_clientes_on_sexo_id", using: :btree
  add_index "clientes", ["vendedor_id"], name: "index_clientes_on_vendedor_id", using: :btree

  create_table "grupoclientes", force: true do |t|
    t.string   "descricao"
    t.decimal  "racio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localidades", force: true do |t|
    t.string   "cod_postal"
    t.string   "localidade"
    t.string   "cidade"
    t.integer  "pais_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "localidades", ["pais_id"], name: "index_localidades_on_pais_id", using: :btree

  create_table "lojas", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pais", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perfilclientes", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "perfil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "perfilclientes", ["cliente_id"], name: "index_perfilclientes_on_cliente_id", using: :btree
  add_index "perfilclientes", ["perfil_id"], name: "index_perfilclientes_on_perfil_id", using: :btree

  create_table "perfils", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profissaos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipocontactos", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendedors", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
