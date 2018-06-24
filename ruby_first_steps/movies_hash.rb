movies = {
  Nezhnost: 4,
  Her: 3
  }

puts "Please enter 'add', 'update', 'display' or 'delete'."
choice = gets.chomp.downcase

case choice
  when 'add'
    puts "Please enter the movie title: "
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Enter the movie rating: "
      rating = gets.chomp
      movies[title] = rating.to_i
      puts "#{title} has been added to movies with a rating of #{rating}."
    else
      "Movie is already in the list."
    end
  when 'update'
    puts "Please enter the movie title: "
    title = gets.chomp.downcase
    if movies[title.to_sym].nil?
      puts "Sorry, movie #{title.capitalize} is not in the list. Please enter another title."
    else
      puts "Enter the movie rating: "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title.capitalize} has been updated with new rating of #{rating}."
    end
  when 'display'
    movies.each { |movie, rating|
      puts "#{movie}: #{rating}"
      }
  when 'delete'
    puts "Please enter the movie title to delete it: "
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "Sorry, #{title} is not in the list."
    else
      movies.delete(title.to_sym)
       puts "#{title} was deleted."
    end
  else 
    puts "Error!"
    puts "Please enter the word 'add', 'update', 'display' or 'delete' to add, update, display or delete movie."
end