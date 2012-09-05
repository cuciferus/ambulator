class Paraclinic < ActiveRecord::Base
  belongs_to :evaluare
  attr_accessible :nume, :valoare
  has_one :fel_analiza
  validates_presence_of :fel_analiza_id
  validates_numericality_of :fel_analiza_id
end
