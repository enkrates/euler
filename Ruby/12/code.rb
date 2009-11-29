#! /usr/bin/env ruby

# http://projecteuler.net/index.php?section=problems&id=12

def count_factors_in_a_number number
  
  factors = Array.new
  factors.push(number)
  
  (1..(number/2)).each do |potential|
    
    if number % potential == 0
      
      factors.push(potential)
      
    end
    
  end
  
  return factors.length
  
end

def return_first_triangle_number_with_the_following_number_of_factors factors
  
  current_leaders = Array.new
  current_leaders[:number_of_factors] = 0
  current_leaders[:triangle_number] = 0
    
  current_natural_number = 1
  
  while current_leaders[:number_of_factors] < factors
    
    
    
    
  end
  
  
end