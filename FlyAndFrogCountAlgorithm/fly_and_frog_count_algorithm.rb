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
X = [1, 4, 5]
S = [2, 3, 5]
Y = [2, 3, 5]
output = frogs(X, S, Y)
puts output.inspect # => [2, 3, 3]
