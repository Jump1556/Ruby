print "What's your first name?"
first_name = gets.chomp.capitalize!
print "What's your last name?"
last_name = gets.chomp.capitalize!
print "What is your age?"
age = gets.chomp
print "What's your city?"
city = gets.chomp.capitalize!
print "What's your state?"
state = gets.chomp.upcase!
print "Is it correct information?"
verify_input = gets.chomp.capitalize!

puts "Your name is #{first_name}!"
puts "Your lastname is #{last_name}!"
puts "Your age is #{age}!"
puts "Your city is #{city}!"
puts "Your state is #{state}!"