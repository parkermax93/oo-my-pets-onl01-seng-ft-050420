class Dog
  
  attr_accessor :name, :mood
  attr_reader :owner
  
  @@all = []
  
  def initialize (name, owner)
    @name = name 
    @owner = owner 
    @mood = "nervous"
    @@all << self
  end
  
  def self.all 
    @@all 
  end
end