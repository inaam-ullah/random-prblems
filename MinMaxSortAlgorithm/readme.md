# Min-Max Sort Algorithm

## Problem Statement

The Min-Max Sort Algorithm is designed to reorder the elements of an array in a specific pattern: the first element is the smallest, the second element is the largest, the third element is the second smallest, the fourth element is the second largest, and so on.

## Objective

Given an array of integers, the objective is to transform it into an array where the elements are arranged in an alternating pattern of minimum and maximum values from the original array.

## Input

- An array of integers, e.g., `[1, 4, 5, 3, 9, 10]`.

## Output

- An array of integers sorted in the Min-Max order, e.g., `[1, 10, 3, 9, 4, 5]`.

## Example

For the input array `[1, 4, 5, 3, 9, 10]`:

- The sorted version of the array is `[1, 3, 4, 5, 9, 10]`.
- The Min-Max sorted array is `[1, 10, 3, 9, 4, 5]`.

## Steps to Solve

1. **Sort the Input Array**: Sort the given array in ascending order.
2. **Initialize Two Pointers**: Use two pointers, one starting at the beginning (`left`) and the other at the end (`right`) of the sorted array.
3. **Construct the Result Array**: Alternate between selecting the smallest available element (pointed to by `left`) and the largest available element (pointed to by `right`) to construct the resulting array.
4. **Stop When Pointers Meet**: Continue until the `left` pointer exceeds the `right` pointer.
