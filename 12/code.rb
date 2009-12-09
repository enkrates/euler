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
  current_leader_number_of_factors = 0
  current_leader_triangle_number = 0
    
  current_natural_number = 1
  number_to_add_to_current_triangle_number = 2
  
  while current_leader_number_of_factors < factors
    
    current_number_of_factors = count_factors_in_a_number(current_natural_number)
    
    if current_number_of_factors > current_leader_number_of_factors
      current_leader_number_of_factors = current_number_of_factors
      current_leader_triangle_number   = current_natural_number
      puts current_number_of_factors
    end
    
    current_natural_number += number_to_add_to_current_triangle_number
    
    number_to_add_to_current_triangle_number += 1
    
  end
  
  return current_leader_triangle_number
  
  
end



puts return_first_triangle_number_with_the_following_number_of_factors(500)