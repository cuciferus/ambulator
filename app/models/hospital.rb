class Hospital < ActiveRecord::Base
  belongs_to :medic
  attr_accessible :contract, :nume, :oras, :sector, :strada
end
