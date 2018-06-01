puts "Duck's style"
print "Please give me a word: "
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
  user_input.gsub!(/s/, 'th')
elsif user_input.length == 0
  puts "Please type a word!"
  user_input = gets.chomp
  user_input.downcase!
else
  print "No 's' in the word. "
end
puts "Your word is #{user_input.upcase}!"