word = 'Pizza'
word_to_array = word.chars

puts "give me a letter"
lives = 8
correct_letter = []


loop do
  puts "lives #{lives}"
  answer = gets.chomp.downcase

  if word.downcase.include? answer
    correct_letter.push(answer)
    correct_letter.push(answer.upcase)
    if word_to_array - correct_letter == []
      puts "you win"
      break
    end
  else 
    lives -= 1
    if lives == 0
      puts "you lost"
      break
    end
  end

  word_to_display = word_to_array.map do |letter|
    if correct_letter.include? letter
      letter
    else
    '_'
    end
  end

  puts word_to_display.join(' ')

end
