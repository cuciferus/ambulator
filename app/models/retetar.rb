class Retetar < ActiveRecord::Base
  belongs_to :medic
  attr_accessible :tip, :medic_id

end
