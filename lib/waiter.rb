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
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select {|meal| meal.waiter}
end