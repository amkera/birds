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
  attr_accessor :species, :bird, :hatched

  @@all = []

  def initialize(species, hatched = false)
    @species = species
    @hatched = hatched
    @@all << self
  end

  def self.all
    @@all
  end


end

class Chicken < Bird; end

class Turkey < Bird; end
