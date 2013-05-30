class Menu
  @@kounters = ["Moose", "Multiplier", "Addifier"]

  def self.welcome_sequence
    puts "You are now using Fancy Count, perfect for your fancy counting needs."
    puts "What is your name?"
    @@player = gets.chomp
    puts ""
    puts "Hello, #{@@player}"
    selecter_sequence
  end

  def self.selecter_sequence
    puts "---------------"
    menu_options
    selection
    playagain?
  end

  def self.menu_options
    puts "Please choose from one of the following counter options:"
    @@kounters.each {|v| puts "  #{v}"}
  end

  def self.selection
    @@user_choice = gets.chomp.capitalize
    puts ""
    if @@kounters.include?(@@user_choice)
      puts "You selected the #{@@user_choice} counter!"
      case @@user_choice 
      when "Moose"
        Moose.countmenu
      when "Multiplier"
        Multiplier.countmenu
      when "Addifier"
        Addifier.countmenu
      end
      thanker
    else
      puts "Your selection was not understood."
    end
  end

  def self.countcaller
    counter = gets.chomp
    counter.countmenu
  end

  def self.thanker
    puts "Thanks for playing, #{@@player}!"
    puts ""
  end

  def self.playagain?
    puts "#{@@player}, would you like to play again?"
    affirmative = ["Yes", "Y", "yes", "y", "YES"]
    answer = gets.chomp
    if affirmative.include?(answer)
      selecter_sequence 
    else
      puts "Goodbye, #{@@player}!"
    end
  end
end


class Kounter
end

class Multiplier < Kounter
  def self.countmenu
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


class Moose < Kounter
  def self.countmenu
    puts "Let's count!..."
    count
  end

  def self.count
    (1..10).each {|n| puts "  " + n.to_s + " Moose!"}
  end
end


class Addifier < Kounter
  def self.countmenu
    puts "Select your addifier. Enter a number:"
    input = gets.chomp
    if input.match(/^[-+]?[0-9]*\.?[0-9]+$/)
      puts "Let's count!..."
      self.count(input.to_f)
    else 
      puts "That was not a valid number."
    end
  end

  def self.count(input)
    helpcount = input
    (1..10).each do |n|
      helpcount = n + helpcount
      puts helpcount
    end
  end
end


Menu.welcome_sequence




