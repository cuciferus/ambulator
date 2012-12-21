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

ActiveRecord::Schema.define(:version => 20121218152444) do

  create_table "brand_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "concentrations", :force => true do |t|
    t.integer  "concentration", :limit => 255
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "si"
  end

  create_table "drugs", :force => true do |t|
    t.string   "dci"
    t.string   "cod"
    t.string   "diagnostic"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "brand_name"
    t.float    "concentration"
    t.string   "si"
  end

  create_table "evaluares", :force => true do |t|
    t.date     "data"
    t.text     "diagnostice"
    t.text     "recomandari"
    t.integer  "pacient_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "nr_fo"
  end

  add_index "evaluares", ["pacient_id"], :name => "index_evaluares_on_pacient_id"

  create_table "exits", :force => true do |t|
    t.date     "data"
    t.string   "motiv"
    t.integer  "pacient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "exits", ["pacient_id"], :name => "index_exits_on_pacient_id"

  create_table "fel_analizas", :force => true do |t|
    t.text     "nume",           :limit => 255
    t.string   "unitate_masura"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "standard"
    t.float    "valoare_minima"
    t.float    "valoare_maxima"
  end

  create_table "hospitals", :force => true do |t|
    t.string   "nume"
    t.string   "strada"
    t.string   "sector"
    t.string   "oras"
    t.string   "contract"
    t.integer  "medic_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "hospitals", ["medic_id"], :name => "index_hospitals_on_medic_id"

  create_table "iesires", :force => true do |t|
    t.date     "data"
    t.string   "motiv"
    t.integer  "pacient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "iesires", ["pacient_id"], :name => "index_iesires_on_pacient_id"

  create_table "line_drugs", :force => true do |t|
    t.integer  "cantitate"
    t.integer  "retetum_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "drug_id"
  end

  add_index "line_drugs", ["drug_id"], :name => "index_line_drugs_on_medicament_id"
  add_index "line_drugs", ["retetum_id"], :name => "index_line_drugs_on_retetum_id"

  create_table "medics", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.string   "cod_parafa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pacients", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.string   "cnp",                            :null => false
    t.text     "adresa"
    t.date     "debut_diabet"
    t.string   "focad"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "evidenta",     :default => true
    t.boolean  "active",       :default => true
  end

  create_table "paraclinics", :force => true do |t|
    t.float    "valoare"
    t.integer  "evaluare_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "fel_analiza_id"
  end

  add_index "paraclinics", ["evaluare_id"], :name => "index_paraclinics_on_evaluare_id"
  add_index "paraclinics", ["fel_analiza_id"], :name => "index_paraclinic_on_fel_analiza_id"

  create_table "reteta", :force => true do |t|
    t.date     "data"
    t.integer  "retetar_id"
    t.integer  "pacient_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "nr_zile"
    t.string   "serie"
  end

  add_index "reteta", ["pacient_id"], :name => "index_reteta_on_pacient_id"
  add_index "reteta", ["retetar_id"], :name => "index_reteta_on_retetar_id"

  create_table "retetars", :force => true do |t|
    t.integer  "medic_id"
    t.string   "tip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "serie"
    t.string   "nr_prima_reteta"
    t.string   "nr_ultima_reteta"
    t.boolean  "terminat"
  end

  add_index "retetars", ["medic_id"], :name => "index_retetars_on_medic_id"

end
