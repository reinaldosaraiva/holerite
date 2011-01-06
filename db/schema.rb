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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110106120426) do

  create_table "contra_cheques", :force => true do |t|
    t.integer  "competencia"
    t.float    "total_vencimento"
    t.float    "total_descontos"
    t.float    "total_liquido_a_receber"
    t.integer  "funcionario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", :force => true do |t|
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "nome_fantasia"
    t.string   "logo"
    t.integer  "endereco_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "fone"
    t.string   "cargo"
    t.string   "banco"
    t.string   "agencia"
    t.string   "conta_corrente"
    t.integer  "endereco_id"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lancamentos", :force => true do |t|
    t.string   "descricao"
    t.float    "referencia"
    t.string   "tipo_lancamento"
    t.float    "valor"
    t.integer  "contra_cheque_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vales", :force => true do |t|
    t.integer  "funcionario_id"
    t.date     "data"
    t.float    "valor"
    t.string   "observacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
