class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = species
    @@all << self
    @cats = []
    
  end
  
  def self.all
    @@all
  end
  
  def species
    @species = "human"
  end 
  
  def say_species
    "I am a human."
  end
  
  def self.count
    @@all.size 
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats (cat)
    @cats << cat
    cat.owner = self
  end
    
  end
  
  def dogs 
    
  end
  
  def buy_cat
    
  end
  
  def buy_dog
    
  end
  
  def walk_dogs
    
  end
  
  def feed_cats
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
  
end