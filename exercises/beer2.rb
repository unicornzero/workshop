class BottleSong
  attr_accessor :drink, :startnum

  def initialize( args={} )
    @drink = args[:drink] || "beer"
    @startnum = args[:startnum] || 99
  end

  def song
    @startnum.downto(2) do |num|
      puts "#{num} bottles of #{drink} on the wall, #{num} bottles of #{drink}."
      puts "Take one down and pass it around. #{num - 1} bottles of #{drink} on the wall."
      puts ""
    end
    num = 2
      puts "#{num} bottles of #{drink} on the wall. #{num} bottles of #{drink}."
      puts "Take one down and pass it around. #{num - 1} bottle of #{drink} on the wall."
      puts ""
    num = 1
      puts "#{num} bottle of #{drink} on the wall. #{num} bottle of #{drink}."
      puts "Take it down and pass it around. No more bottles of #{drink} on the wall."
      puts ""
      puts "No more bottles of beer on the wall, no more bottles of beer."
      puts "Go to the store and buy some more, #{@startnum} bottles of beer on the wall."
  end

end

Beer = BottleSong.new
Beer.song
