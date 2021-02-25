require 'pry'

class Bird

  def lay_egg
    @egg = Egg.new(self.class)
    #self.class is Chicken
  end


end

class Egg

  attr_accessor :bird_species

  def initialize(bird)
    @bird_class = bird
    @hatch_count = 0
    #@bird_class = Chicken
  end

  def hatch

    if @hatch_count > 0
       puts ("Sorry, this egg has already been hatched!")
    else
      @bird = @bird_class.new
      @hatch_count += 1
      puts ("Hatch successful: #{@bird}")
      @bird
    end
  end

end

class Chicken < Bird; end
class Turkey < Bird; end

chicken1 = Chicken.new
egg1 = chicken1.lay_egg


chicken2 = egg1.hatch
puts (chicken1.class == chicken2.class)

egg2 = chicken2.lay_egg
chicken3 = egg2.hatch
puts(chicken3)

puts (chicken1.class == chicken2.class && chicken2.class == chicken3.class)
