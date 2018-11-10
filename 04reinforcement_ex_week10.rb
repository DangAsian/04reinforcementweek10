class Location

  def initialize(name)
    @name = name
  end

  ############READER############

  def name
    @name
  end

  ###########WRITER###############

  def name=(name)
    @name = name
  end


end


class Trip


  def initialize
    @stops = []
  end

############READER############

  def stops
    @stops
  end

##########CODE################

  def add(location)
    @stops << location
  end

  def my_adventure
    puts "Began trip."
    self.stops.each_cons(2) do |location|
      puts "Travelled from #{location[0].name} to #{location[1].name}"
    end
    puts "Ended trip."
  end

end

destination1 = Location.new("Toronto")
destination2 = Location.new("Montreal")
destination3 = Location.new("New Jersey")
destination4 = Location.new("New York")

my_trip = Trip.new

my_trip.add(destination1)
my_trip.add(destination2)
my_trip.add(destination3)
my_trip.add(destination4)

# puts my_trip.stops

my_trip.my_adventure
