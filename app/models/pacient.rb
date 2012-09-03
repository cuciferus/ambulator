class Pacient < ActiveRecord::Base
  attr_accessible :adresa, :cnp, :debut_diabet, :focad, :nume, :prenume
  validates :cnp, :presence => true

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
    
end
