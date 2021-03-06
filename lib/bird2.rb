#Incorrect code

class Bird

  attr_accessor :bird_species

  def initialize(bird_species)
    @bird_species = @bird_species
  end

  def lay_egg
    @egg = Egg.new
  end

end

class Egg

  attr_accessor :bird_species

  def initialize
    @bird_species = @bird_species
  end

  @@hatch_count = 0

  def hatch
    if @@hatch_count > 0
       puts ("Sorry, this egg has already been hatched!")
    end
    @bird = Bird.new(bird_species)
    @@hatch_count += 1
    puts ("Hatch successful: #{@bird}")

  end

end


class Chicken < Bird; end
class Turkey < Bird; end


chicken1 = Chicken.new("chicken")
egg1 = chicken1.lay_egg
puts ([chicken1, egg1])
chicken2 = egg1.hatch
