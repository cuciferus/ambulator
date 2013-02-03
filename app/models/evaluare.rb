class Evaluare < ActiveRecord::Base
  belongs_to :pacient
  belongs_to :medic
  default_scope :order =>'data'
  attr_accessible :data, :diagnostice, :recomandari, :paraclinics_attributes, :medic_id, :nr_fo
  attr_reader :generator_magic
  attr_writer :generator_magic
  has_many :paraclinics
  accepts_nested_attributes_for :paraclinics, allow_destroy: true
  validates :data, :presence => {:message => "evaluarea trebuie sa aibe o data"}
  validates :nr_fo, :presence =>{:message => "evaluarea trebuie sa aibe un nr de registru"}
  validates_uniqueness_of :nr_fo, :scope => :data

end
