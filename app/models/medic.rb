class Medic < ActiveRecord::Base
  has_one :hospital
  has_many :retetars
  accepts_nested_attributes_for :hospital, :retetars
  attr_accessible :cod_parafa, :nume, :prenume
  validates :nume, :presence => true
  validates :prenume, :presence => true
  validates :cod_parafa, :presence => true
  attr_accessible :hospital_attributes
end
