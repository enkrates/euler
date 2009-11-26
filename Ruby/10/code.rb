#! /usr/bin/env ruby

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.


def get_sum_of_primes_up_to high_number
    
  sum_of_primes = 0
  
  (2..high_number).each do |item|
    counter = 0
    for i in 2...item
      if item % i == 0
        counter = counter + 1
      end
    end
    
    if counter == 0
      sum_of_primes = sum_of_primes + item      
      puts item
    end
  end
  
  return sum_of_primes
end

puts get_sum_of_primes_up_to(2000000)