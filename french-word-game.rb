def louchebemize_word(word)
  random_suffix = %w[em é ji oc ic uche ès].sample
  return word if word.size == 1

  if vowel? word[0]
    "l#{word}#{random_suffix}"
  else
    first_vowel_index = word.chars.index { |letter| vowel? letter }
    beginning = word[0...first_vowel_index]
    ending = word[first_vowel_index...word.size]
    "l#{ending}#{beginning}#{random_suffix}"
  end
end

def vowel?(letter)
  %w[a e i o u].include? letter
end

def louchebemize(sentence)
  result_elements = []
  words = sentence.split(/\b/)

  words.each do |word|
    if word =~ /\W/
      result_elements << word
    else
      result_elements << louchebemize_word(word)
    end
  end
  result_elements.join
end
