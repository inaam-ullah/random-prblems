def min_operations_to_permutation(arr)
  arr.sort!
  n = arr.size
  total_operations = 0

  arr.each_with_index do |val, index|
    total_operations += (val - (index + 1)).abs
  end

  total_operations
end

# DO NOT CHANGE the code below, we use it to grade your submission, if changed your submission will be rated
# You can change this as your need.
if __FILE__ == $0
  line = gets.chomp
  k = line.split.map(&:to_i)
  puts min_operations_to_permutation(k)
end
