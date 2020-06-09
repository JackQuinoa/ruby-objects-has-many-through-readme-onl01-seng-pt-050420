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
    Meal.all.select {|meal| meal.waiter == self }
  end
  
  def best_tipper
    best_meal_tipped = meals.sort {|meal_a , meal_b| meal_a.tip <=> meal_b.tip }
    best_meal_tipped.customer 
  end 
  
end