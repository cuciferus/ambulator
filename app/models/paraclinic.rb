class Paraclinic < ActiveRecord::Base
  belongs_to :evaluare
  attr_accessible :nume, :valoare
  has_many :fel_analizas
end
