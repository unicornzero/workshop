puts "Have a conversation with your 16 year old brother, Billy."
puts "  Hey, what's up?"
class Billy
  def self.talk
    input = gets.chomp
    responder(input)
  end


  def self.responder(input)
    case input
    when /^[A-Z][A-Z]+/
      yelled_at
    when /\?$/
      asked_question
    when /\w/
      told_something
    else
      blah
    end
  end

  def self.asked_question
    puts "  Sure."
  end

  def self.told_something
    puts "  Whatever."
  end

  def self.yelled_at
    puts "  Woah, chill out!"
  end

  def self.blah
    puts "  Fine, be that way."
  end

end

5.times {Billy.talk}
