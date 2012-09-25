class Retetum < ActiveRecord::Base
  belongs_to :retetar
  belongs_to :pacient
  attr_accessible :data
  has_many :line_drugs
  has_many :drugs, :through => :line_drugs
  accepts_nested_attributes_for :line_drugs
end
