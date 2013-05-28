class MenuCreater
  attr_accessor :options, :user_choice
  def initialize
    @options = {}
  end

  def merger(class_menutitle)
    @options.merge!(class_menutitle)
  end

  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
    menu_options
    selection
  end

  def menu_options
    puts "Please choose from one of the following counter options:"
    @options.values.each {|v| puts "  #{v}"}
  end

  def selection
    @user_choice = gets.chomp.capitalize
    if @options.value?(@user_choice)
      if @user_choice == "Moose"
        puts "You selected the Moose counter!"
        puts "Let's count!..."
        klass = @user_choice.to_sym
        uc = Moose.new
        uc.count
      else
        puts "Your selection was found in the list, but isn't finished being developed."
      end
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


class Moose < Kounter
  attr_accessor :moose
  def post_initialize(args={})
    @moose = "Moose"
  end
  def count
    (1..10).each {|n| puts "  " + n.to_s + " Moose!"}
  end
end
menu.merger("Moose" => "Moose")


class Addifier < Kounter
end
menu.merger("Addifier" => "Addifier")

##########

menu.welcome_sequence


