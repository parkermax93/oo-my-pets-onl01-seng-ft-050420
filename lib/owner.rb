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
  
  def buy_cat(cat_name)
    @pets << self.Cat.new(cat_name)
  end
  
  def buy_dog(dog_name)
    @pets << self.Dog.new(dog_name)
  end
  
  def cats
    Cat.all.select do
  end
  end
  
  def dogs
    Dog.all.select do 
  end
  end
  
  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  
  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end
end