# Minimum Operations to Transform Array into a Permutation

Given an array of N integers, your task is to transform this array into a permutation of the first N positive integers. A permutation of size N is an arrangement of numbers such that each number from 1 to N appears exactly once. In one operation, you can increase or decrease any element of the array by 1. The challenge is to figure out the smallest number of such operations required to convert the given array into a permutation.

**Examples:**

1. **Input**: N = [3, 2, 1, 4]  
   **Output**: 0  
   **Explanation**: No operation needed; already a permutation.

2. **Input**: N = [4, 1, 4, 2]  
   **Output**: 1  
   **Explanation**: Decrease one '4' to '3' to form the permutation [4, 1, 3, 2].

3. **Input**: N = [2, 3, 4, 5]  
   **Output**: 4  
   **Explanation**: 4 operations to decrease each element by 1 to reach permutation [1, 2, 3, 4]. Note that this is one of the possible permutations, e.g., this can also be achieved by 4 operations to decrease the '5' to '1' to form the permutation [2, 3, 4, 1].

**Constraints:**

- The integers in the array will be equal to or greater than 1.
- The size of the array N can range from 1 to 100,000.

**Here is Ruby code:**

```ruby
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
if __FILE__ == $0
  line = gets.chomp
  k = line.split.map(&:to_i)
  puts min_operations_to_permutation(k)
end
```
