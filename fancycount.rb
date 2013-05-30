class MenuCreater
  attr_accessor :options, :user_choice, :player
  def initialize
    @options = {}
  end

  def merger(class_menutitle)
    @options.merge!(class_menutitle)
  end

  def welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
    puts "What is your name?"
    @player = gets.chomp
    puts ""
    puts "Hello, #{@player}"
    selecter_sequence
  end

  def selecter_sequence
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
      case @user_choice 
      when "Moose"
        Moose.countmenu
        thanker
      when "Multiplier"
        Multiplier.countmenu
        thanker
      when "Addifier"
        Addifier.countmenu
        thanker
      else
        puts "Your selection was found in the list, but isn't finished being developed."
      end
    else
      puts "Your selection was not understood."
    end
  end

  def thanker
    puts "Thanks for playing, #{@player}!"
    puts ""
  end

  def playagain?
    puts "#{@player}, would you like to play again?"
    affirmative = ["Yes", "Y", "yes", "y"]
    answer = gets.chomp
    if affirmative.include?(answer)
      selecter_sequence 
    else
      puts "Goodbye, #{@player}!"
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
  end
end
menu.merger("Moose" => "Moose")


class Addifier < Kounter

  def self.countmenu
    puts "You selected the Addifier counter!"
    puts "Select your addifier. Enter a number:"
    input = gets.chomp
    if input.match(/^[-+]?[0-9]*\.?[0-9]+$/)
      puts "Let's count!..."
      magicnum = input.to_f
      self.count(magicnum)
    else 
      puts "That was not a valid number."
    end
  end

  def self.count(magicnum)
    helpcount = magicnum
    (1..10).each do |n|
      helpcount = n + helpcount
      puts helpcount
    end
  end
end
menu.merger("Addifier" => "Addifier")

menu.welcome_sequence




