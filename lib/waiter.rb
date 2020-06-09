class Waiter
  
  attr_accessor :name, :yrs_experince
  
  @@all - []
  
  def initialize(nmae, yrs_experince)
    @name = name
    @yrs_experince = yrs_experince
    @@all << self 
  end
  
  def self.all 
    @@all 
  end

end