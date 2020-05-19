class Owner
  
  attr_reader :name, :species
  attr_accessor :pets
  
  @@all = []
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end  
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end  
  
  def self.reset_all
    @@all.clear
  end  
  
  def cats 
    Cat.all.select do |cat| 
     cat.owner == self 
    end
  end
  
  def dogs 
    Dog.all.select do |dog|
      dog.owner == self 
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.collect do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    cats.collect do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets.collect 
end