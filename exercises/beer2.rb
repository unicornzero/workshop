class BottleSong
  attr_accessor :drink, :startnum

  def initialize( args={} )
    @drink = args[:drink] || "Beer"
    @startnum = args[:startnum] || 99
  end

  def song
    @startnum.downto(2) do |num|
      puts "#{num} bottles of #{drink} on the wall."
      puts "#{num} bottles of #{drink}."
      puts "Take one down and pass it around."
      puts "#{num - 1} bottles of #{drink} on the wall."
      puts ""
    end
    num = 2
      puts "#{num} bottles of #{drink} on the wall."
      puts "#{num} bottles of #{drink}."
      puts "Take one down and pass it around."
      puts "#{num - 1} bottle of #{drink} on the wall."
      puts ""
    num = 1
      puts "#{num} bottle of #{drink} on the wall."
      puts "#{num} bottle of #{drink}."
      puts "Take one down and pass it around."
      puts "#{num - 1} bottles of #{drink} on the wall."
      puts ""
  end

end

Beer = BottleSong.new
Beer.song
