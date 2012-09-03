class Pacient < ActiveRecord::Base
  attr_accessible :adresa, :cnp, :debut_diabet, :focad, :nume, :prenume
  validates :cnp, :presence => true
  def self.search(search)
    if search and search.is_cnp?
      find_by_cnp(search)
    elsif
      find_by_nume(search)
    else
      all
    end
  end

end
