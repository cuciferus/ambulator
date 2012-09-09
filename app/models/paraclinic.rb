class Paraclinic < ActiveRecord::Base
  belongs_to :evaluare
  attr_accessible :nume, :valoare, :fel_analiza_id
  belongs_to :fel_analiza
  #validates_presence_of :fel_analiza_id
  #validates_numericality_of :fel_analiza_id
  #accepts_nested_attributes_for :fel_analiza
end
