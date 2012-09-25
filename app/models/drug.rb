class Drug < ActiveRecord::Base
  attr_accessible :cantitate, :cod, :dci, :diagnostic, :nume
  has_many :drug_reteta
  has_many :reteta, :through => :drug_reteta
end
