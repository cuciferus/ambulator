class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  belongs_to :medic
  default_scope :order =>'data'
  attr_accessible :data, :diagnostice, :recomandari, :paraclinics_attributes, :medic_id
  attr_reader :generator_magic
  validates :data, :presence => true
  has_many :paraclinics
  accepts_nested_attributes_for :paraclinics, allow_destroy: true


end
