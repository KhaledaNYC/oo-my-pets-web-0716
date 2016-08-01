class Owner
attr_reader :species
attr_accessor :name, :pets
  ALL = []

  def initialize(species)
    ALL << self
    @name = name
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    ALL
  end
  def self.reset_all
    ALL.clear
  end
  def self.count
    ALL.size
  end
  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pet = Fish.new(name)
    @pets[:fishes] << pet
  end

  def buy_cat(name)
    pet = Cat.new(name)
    @pets[:cats] << pet
  end

  def buy_dog(name)
    pet = Dog.new(name)
    @pets[:dogs] << pet
  end

  def walk_dogs
    @pets[:dogs].map {|pet| pet.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map {|pet| pet.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map {|pet| pet.mood = "happy"}
  end
# @pets = {:fishes => [], :dogs => [], :cats => []}
  def sell_pets
    @pets[:dogs].map {|pet| pet.mood = "nervous"}
    @pets[:cats].map {|pet| pet.mood = "nervous"}
    @pets[:fishes].map {|pet| pet.mood = "nervous"}
    @pets.clear
  end

  def list_pets
    dogs = @pets[:dogs].size
    cats = @pets[:cats].size
    fishes = @pets[:fishes].size
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
