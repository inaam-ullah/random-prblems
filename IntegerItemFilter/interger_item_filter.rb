# frozen_string_literal: true

def filter_integers(str)
  str.scan(/\d+/).join('-')
end

# Get input from the user
puts 'Enter a string:'
user_input = gets.chomp

# Filter integers
filtered_output = filter_integers(user_input)
puts "Filtered output: #{filtered_output}"
