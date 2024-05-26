def ReverseAlphabetsOfWordsInASentence(input)
  result = []
  word = []

  i = 0
  while i < input.length
    char = input[i]

    if ('a' <= char && char <= 'z') || ('A' <= char && char <= 'Z')
      word << char
    else
      if word.length > 0
        reversed_word = reverse_word(word)
        for j in 0...reversed_word.length
          result << reversed_word[j]
        end
        word = []
      end
      result << char
    end

    i += 1
  end

  # Append the last word if there is any
  if word.length > 0
    reversed_word = reverse_word(word)
    for j in 0...reversed_word.length
      result << reversed_word[j]
    end
  end

  # Convert result array to string manually
  output = ""
  j = 0
  while j < result.length
    output += result[j]
    j += 1
  end

  output
end

def reverse_word(word)
  reversed = []
  i = word.length - 1
  while i >= 0
    reversed << word[i]
    i -= 1
  end
  reversed
end

# Test the function
input_sentence = "My Name is Inaam"
output_sentence = ReverseAlphabetsOfWordsInASentence(input_sentence)
puts output_sentence  # Output: yM emaN si maanI
