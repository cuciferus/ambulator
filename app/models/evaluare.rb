class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  attr_accessible :data, :diagnostice, :recomandari
  validates :data, :presence => true
end
