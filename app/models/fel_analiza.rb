class FelAnaliza < ActiveRecord::Base
  belongs_to :paraclinic
  attr_accessible :nume, :unitate_masura, :valori_normale, :standard
end
