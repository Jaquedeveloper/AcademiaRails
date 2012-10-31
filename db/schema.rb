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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121031125534) do

  create_table "alimentorefeicaos", :force => true do |t|
    t.integer  "refeicao_id"
    t.integer  "alimento_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "alimentorefeicaos", ["alimento_id"], :name => "index_alimentorefeicaos_on_alimento_id"
  add_index "alimentorefeicaos", ["refeicao_id"], :name => "index_alimentorefeicaos_on_refeicao_id"

  create_table "alimentos", :force => true do |t|
    t.string   "nome"
    t.string   "categoria"
    t.integer  "quantidade"
    t.string   "unidade_medida"
    t.integer  "calorias"
    t.integer  "proteinas"
    t.integer  "carboidratos"
    t.integer  "gorduras"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "exercicios", :force => true do |t|
    t.string   "nome"
    t.integer  "calorias_gastas"
    t.integer  "numero_series"
    t.integer  "tempo_descanso"
    t.integer  "exercicios_series"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "historicos", :force => true do |t|
    t.integer  "refeicao_id"
    t.integer  "treino_id"
    t.float    "peso_atual"
    t.float    "gordura_corporal"
    t.integer  "valor_metabolico"
    t.float    "peso_gordura"
    t.float    "peso_gordura_ideal"
    t.float    "massa_magra"
    t.integer  "calorias_a_consumir"
    t.float    "peso_perdido"
    t.float    "peso_a_perder"
    t.float    "peso_ideal"
    t.integer  "saldo_calorias"
    t.string   "situacao"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "historicos", ["refeicao_id"], :name => "index_historicos_on_refeicao_id"
  add_index "historicos", ["treino_id"], :name => "index_historicos_on_treino_id"

  create_table "refeicaos", :force => true do |t|
    t.integer  "Tipo_Refeicao_id"
    t.integer  "Usuario_id"
    t.integer  "calorias_consumidas"
    t.string   "hora"
    t.string   "data"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "refeicaos", ["Tipo_Refeicao_id"], :name => "index_refeicaos_on_Tipo_Refeicao_id"
  add_index "refeicaos", ["Usuario_id"], :name => "index_refeicaos_on_Usuario_id"

  create_table "tipo_refeicaos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_treinos", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "treinos", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "tipo_treino_id"
    t.integer  "calorias_gastas"
    t.string   "tempo"
    t.string   "data"
    t.string   "horario"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "treinos", ["tipo_treino_id"], :name => "index_treinos_on_tipo_treino_id"
  add_index "treinos", ["usuario_id"], :name => "index_treinos_on_usuario_id"

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.integer  "altura"
    t.string   "sexo"
    t.integer  "idade"
    t.float    "peso_inicial"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
