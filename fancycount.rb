KOUNT_MENU = []

class Kounter
  attr_accessor :count_type, :count_variable, :starting_number, :sequence_length, :sequence
  def initialize(args={})
    @count_type = args[:count_type]
    @count_variable = args[:count_variable]
    @starting_number = args[:starting_number]
    @sequence_length = 10
    @sequence = []
    post_initialize(args)
  end

  def post_initialize(*args)
    # subclass name must append count_menu
  end

end

class Multiplier < Kounter
  attr_accessor :multiplier
  def post_initialize(args={})
    @multiplier = args[:multiplier]
    KOUNT_MENU << self.class #remove this after create menu creater
  end
end
add_menu_multiplier = Multiplier.new #use a menu creater method/class to append the KOUNT_MENU array
class MooseKounter < Kounter
  attr_accessor :moose
  def post_initialize(args={})
    @moose = "Moose"
    KOUNT_MENU << self.class
  end
end
add_menu_moosekounter = MooseKounter.new
class Addifier < Kounter
end

class InputEngine
  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
  end

  def menu_options
    puts "Please choose from one of the following counter options:"

  end
end
puts KOUNT_MENU
