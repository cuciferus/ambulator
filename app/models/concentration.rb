class Concentration < ActiveRecord::Base
  belongs_to :drug
  attr_accessible :concentration
  def concentratie_comlet
    "#{concentratie} #{si}"
  end

end
