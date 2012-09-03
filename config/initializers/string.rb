class String
  def is_number?
    true if Integer(self) rescue false
  end
  def is_cnp?
    true if self.is_number? and self.length ==13 rescue false
  end
end

