class Pacient < ActiveRecord::Base
  attr_accessible :adresa, :cnp, :debut_diabet, :focad, :nume, :prenume
  validates :cnp, :presence => true, :length =>{:is => 13, :wrong_length => "CNP are 13 cifre"}, :numericality => {:only_integer => true}
  has_many :evaluares#, :order => 'data ASC'
  has_many :reteta
  has_one :iesire
  accepts_nested_attributes_for :evaluares
  accepts_nested_attributes_for :reteta
  accepts_nested_attributes_for :iesire
  #named_scope :activ, :condition =>{:active => true}

  def self.search(search)
    search = nil if search ==""
    if search
      if search.is_cnp?
        @pacients = where(:cnp => search, :active => true)
      else
        @pacients = where(:nume => search, :active => true)
      end
    else
      #@pacients = find(:all, :limit => 10)
      @pacients = where(:active => true).limit(10)
    end
    @pacients
  end

  def get_data_and_analiza(analiza)
    evaluari = self.evaluares
    analize =[]
    fel_analiza = FelAnaliza.find(analiza)
    evaluari.each do |evaluare|
      paraclinica = evaluare.paraclinics.where(:fel_analiza_id => analiza)
      data = evaluare.data
      if paraclinica != []
        analize << [paraclinica, data]
      end
    end
    valoare =[]
    analize.each do |analiza|
      if analiza[0] !=[]
        valoare << {:data => analiza[1], :valoare => analiza[0].select(:valoare).map(&:valoare)[0] }
      end
    end
    final ={:valori=> valoare, :unitate_de_masura =>fel_analiza.unitate_masura,:nume_analiza=>fel_analiza.nume.gsub(" ","_")}
  end

end

