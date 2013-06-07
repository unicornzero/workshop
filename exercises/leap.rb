

class Year
  attr_accessor :year

  def initialize(year)
    @year = year
  end

  def leap?
    if year % 4 == 0
      
      if year % 100 != 0
        if year % 400 != 0
          true
        else # divisible by 100 but not 400
          puts "No, it is not a Leap Year"
        end
      else # divisible by 4 but not 100
        puts "Yes, it is a Leap Year!"
      end

    else # not divisible by 4
      puts "No, it is not a Leap Year"
    end
  end
end

Year.new(1996).leap?
