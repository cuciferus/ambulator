class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  attr_accessible :data, :diagnostice, :recomandari, :paraclinics_attributes
  validates :data, :presence => true
  has_many :paraclinics
  accepts_nested_attributes_for :paraclinics

  #accepts_nested_attributes_for :fel_analizas
end
