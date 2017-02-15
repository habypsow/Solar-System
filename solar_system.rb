class Planet
  attr_accessor :name, :diameter, :mass, :moons, :rings, :rotation, :distance_from_the_sun
  
  def initialize (name,diameter,mass,moons,rings,rotation,distance_from_the_sun)
    @name = name
    @diameter = diameter
    @mass = mass
    @moons = moons
    @rings = rings
    @rotation = rotation
    @distance_from_the_sun = distance_from_the_sun
  end
  
  def print_name
    puts "I'm a Planet whose name is #{ @name } that has a diameter of #{ @diameter }, a mass of #{ @mass },
    #{ @moons } moons, #{ @rings } rings, and has a rate of solar rotation of #{ @rotation }.
    My distance from the sun is #{ @distance_from_the_sun }."
  end
  
end

earth = Planet.new("Earth","7917 mi","5.972 × 10^24 kg","1","0","24 days","i")
jupiter = Planet.new("Jupiter","86,881.4 mi","1.898 × 10^27 kg","67","4","9 hours","i")
venus = Planet.new("Venus","7520 mi","4.867 × 10^24 kg","0","0","i","i")

planets = [earth, jupiter, venus]

planets.each do |planet|
  print planet.name + " : "
  planet.print_name
end

class SolarSystem
  attr_reader :galaxy_name, :planets, :formation_year
  def initialize (galaxy_name,formation_year)
    @galaxy_name = galaxy_name
    @planets = []
    @formation_year = formation_year
  end
  
  def add_planets(planet_name)
    @planets << planet_name
  end
  
  # def print_system
  #   puts "This system is the #{ @galaxy_name }, it has a formation
  #   year of # { @formation_year } ago."
  
end

milky_way = SolarSystem.new("Milky Way","13.6 billion years")
puts "This system is the #{ milky_way.galaxy_name }, it has a formation
year of #{ milky_way.formation_year } ago."

planets.each do |planet|
  milky_way.add_planets(planet)
  # planets.print_system
end

milky_way.planets
