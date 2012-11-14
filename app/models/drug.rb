class Drug < ActiveRecord::Base
  attr_accessible  :cod, :dci, :diagnostic,  :concentrations_attributes, :brand_names_attributes
  has_many :line_drugs
  has_many :reteta, :through => :line_drugs
  has_many :concentrations
  has_many :brand_names
  accepts_nested_attributes_for :concentrations
  accepts_nested_attributes_for :brand_names


end
