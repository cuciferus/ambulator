class DrugComercial < ActiveRecord::Base
  belongs_to :drug
  attr_accessible :nume
end
