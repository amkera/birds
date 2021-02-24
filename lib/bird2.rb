class Bird


  def lay_egg
    @egg = Egg.new
  end

  #an egg is laid

end

class Egg

  @@hatch_count = 0

  def hatch
    if @@hatch_count > 0
       puts ("Sorry, this egg has already been hatched!")
    end
    @bird = Bird.new
    @@hatch_count += 1
    puts ("A new bird has been hatched: #{@bird}")

  end

end

class Chicken < Bird

end

chicken1 = Chicken.new
puts(chicken1)
egg1 = chicken1.lay_egg
puts(egg1)
chicken_2 = egg1.hatch
