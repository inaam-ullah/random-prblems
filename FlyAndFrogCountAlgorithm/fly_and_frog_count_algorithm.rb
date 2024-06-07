def frogs(x, s, y)
  result = []

  x.each_with_index do |frog_position, i|
    frog_tongue_size = s[i]
    fly_count = 0

    y.each do |fly_position|
      if (frog_position - fly_position).abs <= frog_tongue_size
        fly_count += 1
      end
    end

    result << fly_count
  end

  result
end

# Example usage
x = [1, 4, 5]
s = [2, 3, 5]
y = [2, 3, 5]
output = frogs(x, s, y)
puts output.inspect # => [2, 3, 3]

x = [3]
s = [5]
y = [7, 1, 2, 6, 4, 5, 3, 0, 8]
output = frogs(x, s, y)
puts output.inspect # => [9]
