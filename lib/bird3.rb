#Incorrect code

require 'pry'

class Bird

  attr_accessor :bird_species

  def initialize(bird_species)
    @bird_species = bird_species
  end

  def lay_egg
    @egg = Egg.new
  end
  #whenever an egg is laid, we want to associate it to the bird that laid it

end

class Egg

  @@hatch_count = 0

  def hatch
    if @@hatch_count > 0
       puts ("Sorry, this egg has already been hatched!")
    end
    @bird = Bird.new
    @@hatch_count += 1
    puts ("Hatch successful: #{@bird}")

  end

end





class Chicken < Bird; end

chicken1 = Chicken.new("chicken")
puts("#{chicken1} is a #{chicken1.bird_species}.")
egg1 = chicken1.lay_egg
puts("#{egg1} is an instance of the #{egg1.class} class.")
