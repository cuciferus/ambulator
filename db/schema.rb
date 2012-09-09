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

ActiveRecord::Schema.define(:version => 20120909053402) do

  create_table "evaluares", :force => true do |t|
    t.date     "data"
    t.text     "diagnostice"
    t.text     "recomandari"
    t.integer  "pacient_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "evaluares", ["pacient_id"], :name => "index_evaluares_on_pacient_id"

  create_table "fel_analizas", :force => true do |t|
    t.string   "nume"
    t.string   "unitate_masura"
    t.string   "valori_normale"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.boolean  "standard"
  end

  create_table "pacients", :force => true do |t|
    t.string   "nume"
    t.string   "prenume"
    t.string   "cnp",          :null => false
    t.text     "adresa"
    t.date     "debut_diabet"
    t.string   "focad"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "paraclinics", :force => true do |t|
    t.string   "nume"
    t.float    "valoare"
    t.integer  "evaluare_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "fel_analiza_id"
  end

  add_index "paraclinics", ["evaluare_id"], :name => "index_paraclinics_on_evaluare_id"
  add_index "paraclinics", ["fel_analiza_id"], :name => "index_paraclinic_on_fel_analiza_id"

end
