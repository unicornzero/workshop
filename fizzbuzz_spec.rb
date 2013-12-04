require 'minitest/autorun'
require 'minitest/pride'
require './fizzbuzz'

describe FizzBuzz do

  it 'prints a result' do
    assert_equal '1, 2', FizzBuzz.new(2)
  end

  it 'prints FizzBuzz' do
    upperbound = 15
    game = FizzBuzz.new(upperbound)
    expected = "1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz"
    game.run.must_equal expected
  end
  
end