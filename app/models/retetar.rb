class Retetar < ActiveRecord::Base
  belongs_to :medic
  attr_accessible :tip
end
