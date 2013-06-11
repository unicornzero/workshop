require 'highline/import'

zip = ask("Zip?  ") { |q| q.validate = /\A\d{5}(?:-?\d{4})?\Z/ }

color = ask "What is your favorite color?"
drink = ask "What is your favorite drink?"
spinach = ask "Do you like spinach?"
bunnies = ask "Do you like bunnies?"
coffee = ask "Do you like coffee?" do |q|
	q.validate = /^(yes|no)$/
end
mustelid = ask "Choose your favorite Mustelid. Do you prefer the otter, skunk, marten, or stoat?" do |q|
	q.validate = /^(otter|skunk|marten|stoat)$/
end
puts "Your favorite mustelid is the #{mustelid}!"