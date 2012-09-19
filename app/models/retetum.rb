class Retetum < ActiveRecord::Base
  belongs_to :medicamente
  belongs_to :retetar
  belongs_to :pacient
  attr_accessible :data
end
