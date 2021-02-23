class Bird
  attr_accessor :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  # def lay_egg(egg)
  #   egg.bird = self
  #   egg.species = species
  # end

  #it shouldn't take IN an egg...it should create one
  def lay_egg
    @egg = Egg.new(species)
    @egg.bird = self
    @egg.species = species
  end

  def eggs
    Egg.all.select {|eggs| eggs.bird == self}
  end

  def self.egg_count
    Egg.all.count
  end
end


class Egg
  attr_accessor :species, :bird

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end
end

class Chicken < Bird
end

class Turkey < Bird
end

chicken1 = Chicken.new("chicken")
chicken1.lay_egg
chicken1.lay_egg


turkey1 = Turkey.new("turkey")
turkey1.lay_egg
puts turkey1.eggs

puts ("These are chicken1's eggs:  #{chicken1.eggs}")
puts ("These are turkey1's eggs:  #{turkey1.eggs}")
