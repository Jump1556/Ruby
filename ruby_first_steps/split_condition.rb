puts "Type some text: "
text = gets.chomp

puts "Type word to redact: "
redact = gets.chomp

words = text.split(" ")
words.each do |word| 
  if word == redact
    print "REDACTED "
  else
 		print word + " "
  end 
end