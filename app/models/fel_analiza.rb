class FelAnaliza < ActiveRecord::Base
  has_many :paraclinics
  attr_accessible :nume, :unitate_masura, :standard, :valoare_minima, :valoare_maxima
  validates_presence_of :nume
  validates_uniqueness_of :nume
end
