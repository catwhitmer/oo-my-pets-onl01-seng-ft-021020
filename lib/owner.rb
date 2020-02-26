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
    self.cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil 
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil 
      dog.mood = "nervous"
  end
  
  def list_pets
    num_of_dogs = self.dogs.count
    num_of_cats = self.cats.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
end