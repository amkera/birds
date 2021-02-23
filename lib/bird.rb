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

  def hatch
    #add logic for can only hatch once
    puts 'A bird is hatching...'
    @bird = Bird.new(species)
    puts @bird
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

puts ("First egg of chicken1:  #{chicken1.eggs[0]}")
puts ("These are turkey1's eggs:  #{turkey1.eggs}")

#hatching first egg of chicken1

chicken1.eggs[0].hatch
