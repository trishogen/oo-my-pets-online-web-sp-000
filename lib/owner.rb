class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species='human')
    @species = species
    @@all << self
    @pets = {fishes:[], dogs:[], cats:[]}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dog] << new_dog
  end

end
