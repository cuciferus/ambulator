class Drug < ActiveRecord::Base
  attr_accessible :cantitate, :cod, :dci, :diagnostic, :nume
  belongs_to :reteta
end
