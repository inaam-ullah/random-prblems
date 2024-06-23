def min_max_sort(arr)
  # Step 1: Sort the array
  sorted_arr = arr.sort

  # Step 2: Initialize result array
  result_arr = []

  # Step 3: Fill result array with min-max order
  left = 0
  right = arr.length - 1
  while left <= right
    if left != right
      result_arr << sorted_arr[left]
      result_arr << sorted_arr[right]
    else
      result_arr << sorted_arr[left]
    end
    left += 1
    right -= 1
  end

  result_arr
end

# Example usage:
input_arr = [1, 4, 5, 3, 9, 10]
output_arr = min_max_sort(input_arr)
puts "Input Array: #{input_arr}"
puts "Min-Max Sorted Array: #{output_arr}"
