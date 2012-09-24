class Medic < ActiveRecord::Base
  attr_accessible :cod_parafa, :nume, :prenume
  validates :nume, :presence => true
  validates :prenume, :presence => true
  validates :cod_parafa, :presence => true
end
