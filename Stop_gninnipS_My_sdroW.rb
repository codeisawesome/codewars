def spinWords(string)
  word_array = string.split(" ")
  spined_word_array = []

  word_array.each do |word|
    if word.length >= 5
      spined_word_array.push(word.reverse!)
    else
      spined_word_array.push(word)
    end
  end

  spined_word_array.join(" ")
end
