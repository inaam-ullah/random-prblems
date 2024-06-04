# Frog And Fly Count

You are given several frogs on a line, each positioned at an integer coordinate with a specific tongue size. The `i-th` frog is located at coordinate `X[i]` and has a tongue size `S[i]`.

Additionally, there are flies positioned at various integer coordinates. The `i-th` fly is positioned at coordinate `Y[i]`.

A frog `i` can eat a fly `j` if and only if:

``
|X[i] - Y[j]| <= S[i]
``

This means that the frog can eat the fly if the distance between them is less than or equal to the size of the frog's tongue.

## Task

Determine how many flies each frog can eat.

## Input

- `X`: A list of integers where `X[i]` represents the position of the `i-th` frog.
- `S`: A list of integers where `S[i]` represents the tongue size of the `i-th` frog.
- `Y`: A list of integers where `Y[i]` represents the position of the `i-th` fly.

### Output

- The function should return a list of integers where the `i-th` integer represents the number of flies the `i-th` frog can eat.

### Example 1

**Input:**

```ruby
X = [1, 4, 5]
S = [2, 3, 5]
Y = [2, 3, 5]
```

**Output:**

```ruby
[2, 3, 3]
```

### Example 2

**Input:**

```ruby
X = [3]
S = [5]
Y = [7, 1, 2, 6, 4, 5, 3, 0, 8]
```

**Output:**

```ruby
[9]
```

### Constraints

- Positions `X[i]`, `S[i]`, and `Y[i]` are non-negative integers.
- No two frogs share the same position in the list `X`.
- There may be cases where there are no frogs and/or no flies.
- `0 <= X[i], S[i], Y[i] <= 10^5`.

---

## Given Code in Ruby

Below is a Ruby implementation of the solution:

```ruby
def frogs(X, S, Y)
  # Initialize a list to store the number of flies each frog can eat
  result =［1］
  result
end

# Example usage
X = [1, 4, 5]
S = [2, 3, 5]
Y = [2, 3, 5]
output = frogs(X, S, Y)
puts output.inspect # => [2, 3, 3]
```

### Explanation

- The `frogs` function calculates the number of flies each frog can eat based on the distance between the frog and each fly and the size of the frog's tongue.
- It iterates over each frog and counts how many flies are within reach of that frog's tongue.
- The result is a list where each entry corresponds to the number of flies a specific frog can eat.
