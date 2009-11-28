#! /usr/bin/env ruby

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# 
# http://projecteuler.net/index.php?section=problems&id=10


def get_sum_of_primes_up_to high_number
    
  sum_of_primes = 2
  
  (3..high_number).each do |item|
    if item % 2 == 0
      next
    end
        
    counter = 0
    this_square_root = Math.sqrt(item)
    for i in 3..this_square_root
      if item % i == 0
        counter = counter + 1
      end
      if counter > 0
        break
      end     
    end
    if counter > 0
      next
    end
    
    if counter == 0
      sum_of_primes = sum_of_primes + item      
      puts item
    end
  end
  
  return sum_of_primes
end