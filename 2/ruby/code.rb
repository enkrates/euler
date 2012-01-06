#!/usr/bin/env ruby

def shorter_fibonacci_sum number
  previous_number = 1
  current_number  = 2
  sum             = 0
  
  while current_number < number
    if current_number % 2 == 0
      sum = sum + current_number
    end
    current_number = current_number + previous_number
    previous_number = current_number - previous_number
  end
  return sum
end

puts shorter_fibonacci_sum 4000000