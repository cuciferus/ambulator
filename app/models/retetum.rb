class Retetum < ActiveRecord::Base
  belongs_to :retetar
  belongs_to :pacient
  attr_accessible :data
  has_many :drug_reteta
  has_many :drugs, :through => :drug_reteta
end
