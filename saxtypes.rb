sax_types = ["soprano", "alto", "tenor", "bari", "baritone", "bass"]

puts "Which type of saxophone does the musician play?"
instrument = gets.chomp.to_s.downcase

if sax_types.include?(instrument)
  puts "The #{instrument} saxophone is a beautiful instrument!" 
else
  puts "I'm unfamiliar with that type of saxophone."
end
