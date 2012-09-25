class LineDrug < ActiveRecord::Base
  belongs_to :retetum
  belongs_to :drug
  attr_accessible :cantitate
end
