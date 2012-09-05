class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  attr_accessible :data, :diagnostice, :recomandari
  validates :data, :presence => true
  has_many :paraclinics
end
