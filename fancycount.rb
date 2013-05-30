class MenuCreater
  attr_accessor :options, :user_choice
  def initialize
    @options = {}
  end

  def merger(class_menutitle)
    @options.merge!(class_menutitle)
  end

  def welcome_sequence
    puts "---------------"
    menu_options
    selection
    playagain?
  end

  def menu_options
    puts "Please choose from one of the following counter options:"
    @options.values.each {|v| puts "  #{v}"}
  end

  def selection
    @user_choice = gets.chomp.capitalize
    puts ""
    if @options.value?(@user_choice)
      if @user_choice == "Moose"
        Moose.countmenu
      elsif @user_choice == "Multiplier"
        Multiplier.countmenu
      elsif @user_choice == "Addifier"
        puts "You selected the Addifier counter!"
        puts "Select your addifier. Enter a number:"
        input = gets.chomp
        if input.match(/^[-+]?[0-9]*\.?[0-9]+$/)
          puts "Let's count!..."
          num = input.to_f
          uc = Addifier.new(magicnum: num)
          uc.count
        else 
          puts "That was not a valid number."
        end
      else
        puts "Your selection was found in the list, but isn't finished being developed."
      end
    else
      puts "Your selection was not understood."
    end
  end

  def playagain?
    puts "#{PLAYER}, would you like to play again?"
    affirmative = ["Yes", "Y", "yes", "y"]
    answer = gets.chomp
    if affirmative.include?(answer)
      welcome_sequence 
    else
      puts "Goodbye, #{PLAYER}!"
    end
  end
end
menu = MenuCreater.new


class Kounter
end

class Multiplier < Kounter

  def self.countmenu
    puts "You selected the Multiplier counter!"
    puts "Select your multiplier. Enter a number:"
    input = gets.chomp
    if input.match(/^[-+]?[0-9]*\.?[0-9]+$/)
      puts "Let's count!..."
      multiplier = input.to_f
      count(multiplier)
    else 
      puts "That was not a valid number."
    end
  end

  def self.count(multiplier)
    (1..10).each do |n| 
      puts "#{n}.  #{ n * multiplier.to_f}"
    end
    thanker
  end

end
menu.merger("Multiplier" => "Multiplier")


class Moose < Kounter

  def self.countmenu
    puts "You selected the Moose counter!"
    puts "Let's count!..."
    count
  end

  def self.count
    (1..10).each {|n| puts "  " + n.to_s + " Moose!"}
    thanker
  end
end
menu.merger("Moose" => "Moose")


class Addifier < Kounter
  attr_accessor :magicnum, :helpcount

  def post_initialize(args={})
    @magicnum = args[:magicnum]
  end

  def count
    @helpcount = @magicnum
    (1..10).each do |n|
      @helpcount = n + @helpcount
      puts @helpcount
    end
    thanker
  end
end
menu.merger("Addifier" => "Addifier")

def thanker
  puts "Thanks for playing, #{PLAYER}!"
  puts ""
end

##########
puts "You are now using Fancy Count, perfect for your fancy counting needs."
puts "What is your name?"
PLAYER = gets.chomp
puts ""
puts "Hello, #{PLAYER}"
menu.welcome_sequence




