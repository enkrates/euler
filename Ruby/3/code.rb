#!/usr/bin/env ruby

def find_factors_of_an_integer integer, array_of_factors = []
  
  for i in 2..integer
    if integer % i == 0
      integer = integer / i
      if !array_of_factors.include?(i)
        array_of_factors.push(i)
      end
      find_factors_of_an_integer(integer, array_of_factors)
      break
    end
  end
  
  return array_of_factors
  
end

def find_primes_in_an_array array
  
  array_of_primes = Array.new
  
  array.each do |item|
    counter = 0
    one_lower_than_item = item - 1
    for i in 2...one_lower_than_item
      if item % i == 0
        counter = counter + 1
      end
    end
    
    if counter == 0
      array_of_primes.push(item)
    end
  end
  
  array_of_primes.delete(1)
  
  return array_of_primes.sort
  
end


    # factors = find_factors_of_an_integer(600851475143) 
    # puts find_primes_in_an_array(factors)