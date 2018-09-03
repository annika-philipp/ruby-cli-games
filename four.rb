def four_letters_in_common(word = "SPLIT", dictionary_array = File.read("dictionary.txt").split("\n").select do |word| word.length > 3 end)
  answers = []
  all_fours = []

  # iterate over word and get all lots of 4 consecutive letters, word.length-3 as end as no 4-letter option possible 
  $x = 0
  while $x < word.length-3 do
    all_fours.push(word[$x..$x+3])
    $x += 1
  end

  #iterate over all_fours array and dictionary_array to check if each entry matched any of the all_fours options
  for entry in all_fours
    for term in dictionary_array
      if term.include? entry
        answers.push(term)
      end
    end
  end

  answers.sort!
  puts answers
  return answers

end

four_letters_in_common