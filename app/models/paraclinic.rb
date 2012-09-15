class Paraclinic < ActiveRecord::Base
  belongs_to :evaluare
  attr_accessible :nume, :valoare, :fel_analiza_id
  belongs_to :fel_analiza
end
