class Drug < ActiveRecord::Base
  attr_accessible :cantitate, :cod, :dci, :diagnostic, :nume
  has_many :line_drugs
  has_many :reteta, :through => :line_drugs
end
