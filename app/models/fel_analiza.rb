class FelAnaliza < ActiveRecord::Base
  has_many :paraclinics
  attr_accessible :nume, :unitate_masura, :standard, :valoare_minima, :valoare_maxima
  validates_presence_of :nume
  validates_uniqueness_of :nume
  def self.search(search)
    search = nil if search ==""
    if search
      @fel_analizas = find(:all, :conditions => ['nume like ?',"%#{search}"])
    else
      @fel_analizas = find(:all, :limit => 10)
    end
  end

    


end
