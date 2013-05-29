class Scrabble

  @@letter_values = {
    1 => %w{A E I O U L N R S T},
    2 => %w{D G},
    3 => %w{B C M P},
    4 => %w{F H V W Y},
    5 => %w{K},
    8 => %w{J X},
    10 => %w{Q Z}
    }

  def self.score(word)
    @@wordscore = 0
    letters = word.upcase.split('')
    pointscore(letters)
    puts @@wordscore
  end

  def self.pointscore(letters)
    letters.each do |l|
      letterfinder(l)
    end
  end

  def self.letterfinder(l)
    @@letter_values.each do |k, v|
      if v.include?(l)
        @@wordscore = @@wordscore + k
      end
    end
  end

end

Scrabble.score("cabbage")
