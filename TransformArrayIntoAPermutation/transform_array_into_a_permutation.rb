def min_operations_to_permutation(arr)
  n = arr.size
  arr.sort!

  total_cost = 0

  arr.each_with_index do |val, index|
    target_value = index + 1
    total_cost += (val - target_value).abs
  end

  total_cost
end

puts ("Input [3, 2, 1, 4]\nOutput: #{min_operations_to_permutation([3, 2, 1, 4])}\n\n")
puts ("Input [4, 1, 4, 2]\nOutput: #{min_operations_to_permutation([4, 1, 4, 2])}\n\n")
puts ("Input [2, 3, 4, 5]\nOutput: #{min_operations_to_permutation([2, 3, 4, 5])}\n\n")
