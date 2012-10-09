class Pacient < ActiveRecord::Base
  attr_accessible :adresa, :cnp, :debut_diabet, :focad, :nume, :prenume
  validates :cnp, :presence => true, :length =>{:is => 13, :wrong_length => "CNP are 13 cifre"}, :numericality => {:only_integer => true}
  has_many :evaluares#, :order => 'data ASC'
  accepts_nested_attributes_for :evaluares

  def self.search(search)
    search = nil if search ==""
    if search
      if search.is_cnp?
        @pacients = find(:all, :conditions => ['cnp = ?', search])
      else
        @pacients = find(:all, :conditions => ['nume like ?',"%#{search}"])
      end
    else
      @pacients = find(:all, :limit => 10)
    end
    @pacients
  end

  def get_data_and_analiza(analiza)
    evaluari = self.evaluares

    #dati = evaluari.select(:data).map(&:data).map{|data| data.to_time.to_i * 1000}.map{|iara| ["#{iara}".to_i, 4]}
    analize =[]
    evaluari.each do |evaluare|
      paraclinica = evaluare.paraclinics.where(:fel_analiza_id => analiza)
      if paraclinica != []
        analize << paraclinica
      end
    end
    valoare = []
    analize.each do |analiza|
      if analiza != []
        valoare << analiza.select(:valoare).map(&:valoare)
      end
    end
    valoare
  end
    
end
