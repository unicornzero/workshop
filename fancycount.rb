class MenuCreater
  attr_accessor :options, :user_choice
  def initialize
    @options = {}
  end

  def merger(class_and_title)
    @options.merge!(class_and_title)
  end

  def keylist
    @options.each do |k,v|
      puts v
    end
  end

  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
    menu_options
    selection
  end

  def menu_options
    puts "Please choose from one of the following counter options:"
    keylist
  end

  def selection
    @user_choice = gets.chomp.to_s
    if @options.include?(@user_choice.capitalize)
      puts "Your selection was found in the list, but isn't finished being developed."
    else
      puts "Your selection was not understood."
    end
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
end
menu.merger("MooseKounter" => "Moose Counter")


class Addifier < Kounter
end
menu.merger("Addifier" => "Addifier")

menu.welcome_sequence
