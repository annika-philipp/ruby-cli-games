puts "To get the solution press S"

10.times do
  words = File.read("words.txt").split("\n").select do |word| word.length > 3 && word.length < 8 end
  word = words.sample
    
  anagram = word.split("").shuffle.join
  guessed = false

  input = /^[a-zA-Z]$/

  puts "Guess the word: #{anagram}"

  while !guessed
    answer = gets.chomp.downcase
    if answer != input
      puts "you can only use letters"
    end

    if answer === word
      guessed = true
    elsif answer == "s"
      puts word
    else
      puts "Try again"
    end

    if guessed
      puts "You win"
    end
  end
  puts "Play again? Y/N"
  new_game = gets.chomp.upcase
  if new_game == "N"
    puts "Good Bye"
    break
  end
end
