class MenuCreater
  attr_accessor :options
  def initialize
    @options = {}
  end
  def merger(class_and_title)
    @options.merge!(class_and_title)
  end
  def 
  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
  end
  def menu_options
    puts "Please choose from one of the following counter options:"
    puts @options
  end
end
menu = MenuCreater.new


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
  end
end

class Multiplier < Kounter
  attr_accessor :multiplier
  def post_initialize(args={})
    @multiplier = args[:multiplier]
  end
end
menu.merger("Multiplier" => "Multiplier")


class MooseKounter < Kounter
  attr_accessor :moose
  def post_initialize(args={})
    @moose = "Moose"
  end
  def menu_key
    :moosekounter
  end
  def menu_value
    "Moose Counter"
  end
end
menu.merger("MooseKounter" => "Moose Counter")


class Addifier < Kounter
end

class InputEngine
  attr_accessor :menu
  def initialize(menu)
    @menu = menu
  end

  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
  end

  def menu_options
    puts "Please choose from one of the following counter options:"
    puts menu
  end
end
prompter = InputEngine.new(menu.options)
menu.menu_options
