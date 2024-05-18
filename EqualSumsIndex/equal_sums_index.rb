def find_equal_sum_index(array)
  total_sum = array.sum
  left_sum = 0

  array.each_with_index do |num, index|
    right_sum = total_sum - left_sum - num
    return index if left_sum == right_sum
    left_sum += num
  end

  -1
end

if __FILE__ == $0
  array = [1, 7, 3, 6, 5, 6]
  index = find_equal_sum_index(array)
  return puts "There isn't any index where left and right sum of array is equal" if index == -1
  puts "Index where sum of right side and left side is equal: #{index}"
end
