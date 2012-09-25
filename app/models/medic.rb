class Medic < ActiveRecord::Base
  has_one :hospital
  accepts_nested_attributes_for :hospital
  attr_accessible :cod_parafa, :nume, :prenume
  validates :nume, :presence => true
  validates :prenume, :presence => true
  validates :cod_parafa, :presence => true
  attr_accessible :hospital_attributes
end
