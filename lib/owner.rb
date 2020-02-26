class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = species
    @@all << self
    @cats = []
    @dogs = []
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
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    
  end
  
  def sell_pets
    
  end
  
  def list_pets
    
  end
  
  def self.reset_all
    @@all.clear
  end
  
end