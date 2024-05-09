def word_count(paragraph)
  words = paragraph.downcase.scan(/\b[a-z]+\b/)
  counts = Hash.new(0)
  words.each { |word| counts[word] += 1 }
  counts
end

if __FILE__ == $0
  paragraph = "Your sample paragraph goes here."
  puts word_count(paragraph)
end
