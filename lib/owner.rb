class Owner
  
  attr_reader :name, :species
  attr_accessor :pets
  
  @@all = []
 
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
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
  
  def buy_cat(cat_name)
    @pets << self.Cat.new(cat_name)
  end
end