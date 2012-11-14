class Concentration < ActiveRecord::Base
  belongs_to :drug
  attr_accessible :concentration
end
