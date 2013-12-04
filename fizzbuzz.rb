class FizzBuzz
  def initialize(upperbound)
    @upperbound = upperbound
  end

  def run
    string = 1.upto(@upperbound).map do |i|
      transform(i)
    end.join(" ")
  end

  private
  def transform(i)
    case
    when i % 15== 0
      "FizzBuzz"
    when i % 3 == 0
      "Fizz"
    when i % 5 == 0
      "Buzz"
    else
      i.to_s
    end
  end
end