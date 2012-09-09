class FelAnaliza < ActiveRecord::Base
  has_many :paraclinics
  attr_accessible :nume, :unitate_masura, :valori_normale, :standard
  validates_presence_of :nume
  validates_uniqueness_of :nume
end
