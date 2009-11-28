#!/usr/bin/env ruby

def sum_of_the_squares array_of_numbers
  
  sum = 0
  
  array_of_numbers.each do |item|
    sum = sum + (item * item)
  end
  
  return sum
  
end

def square_of_the_sum array_of_numbers
  
  sum = 0
  
  array_of_numbers.each do |item|
    sum = sum + item
  end
  
  square = sum * sum
  
  return square
  
end

first_ten_natural_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

one_to_one_hundred = Array.new

for i in 1..100
  one_to_one_hundred.push(i)
end

puts (square_of_the_sum(one_to_one_hundred) - sum_of_the_squares(one_to_one_hundred))