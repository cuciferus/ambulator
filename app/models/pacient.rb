class Pacient < ActiveRecord::Base
  attr_accessible :adresa, :cnp, :debut_diabet, :focad, :nume, :prenume
  validates :cnp, :presence => true, :length =>{:is => 13, :wrong_length => "CNP are 13 cifre"}, :numericality => {:only_integer => true}
  has_many :evaluares#, :order => 'data ASC'
  accepts_nested_attributes_for :evaluares

  def self.search(search)
    search = nil if search ==""
    if search
      if search.is_cnp?
        @pacients = where(:cnp => search)
      else
        @pacients = where(:nume => search)
      end
    else
      @pacients = find(:all, :limit => 10)
    end
    @pacients
  end

  def get_data_and_analiza(analiza)
    evaluari = self.evaluares
    analize =[]
    evaluari.each do |evaluare|
      paraclinica = evaluare.paraclinics.where(:fel_analiza_id => analiza)
      data = evaluare.data.to_time.to_i * 1000
      if paraclinica != []
        analize << [paraclinica, data]
      end
    end
    valoare = []
    analize.each do |analiza|
      if analiza[0] != []
        valoare << [analiza[1], analiza[0].select(:valoare).map(&:valoare)[0] ]
      end
    end
    valoare
  end

end
