class Robot
  attr_accessor :name, :macaddy

  def initialize
    @name = namer
    @macaddy = macadr
  end

  def namer
    named = []
    2.times {named << rand(65..91).chr}
    named << rand(100..999)
    named.join("")
  end

  def macadr
  	#generates mac address
  end

  def reset
    @name = namer
  end

end


puts "Robot 1: "
robot1 = Robot.new
puts robot1.name
puts robot1.name
puts robot1.name

puts "Robot 2: "
robot2 = Robot.new
puts robot2.name
puts robot2.name
puts robot2.name

puts "Robot 3: "
robot3 = Robot.new
puts robot3.name
puts robot3.name
puts "Resetting to factory settings."
robot3.reset
puts robot3.name
puts robot3.name