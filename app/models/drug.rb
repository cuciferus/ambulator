class Drug < ActiveRecord::Base
  attr_accessible  :cod, :dci, :diagnostic
  has_many :line_drugs
  has_many :reteta, :through => :line_drugs
  has_many :drug_comercials
  has_many :drug_concentrations


end
