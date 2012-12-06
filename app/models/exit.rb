class Exit < ActiveRecord::Base
  belongs_to :pacient
  attr_accessible :data, :motiv
end
