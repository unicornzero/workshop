def verse(num, drink)
  if num > 2
    puts "#{num} bottles of #{drink} on the wall."
    puts "#{num} bottles of #{drink}."
    puts "Take one down and pass it around."
    puts "#{num - 1} bottles of #{drink} on the wall."
    puts ""
  elsif num == 2
    puts "#{num} bottles of #{drink} on the wall."
    puts "#{num} bottles of #{drink}."
    puts "Take one down and pass it around."
    puts "#{num - 1} bottle of #{drink} on the wall."
    puts ""
  else
    puts "#{num} bottle of #{drink} on the wall."
    puts "#{num} bottle of #{drink}."
    puts "Take one down and pass it around."
    puts "#{num - 1} bottles of #{drink} on the wall."
    puts ""
  end
end

(99..98).each do |n|
  verse(n, "beer")
end
