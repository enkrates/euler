#! /usr/bin/env ruby

# http://projecteuler.net/index.php?section=problems&id=12

def count_factors_in_a_number number
  factors = 2
   (2..Math.sqrt(number)).each do |potential|
    if number % potential == 0
      factors += 2
    end
  end
  return factors
end

def return_first_triangle_number_with_more_than_the_following_number_of_factors factors
  current_leader_number_of_factors = 0
  current_leader_triangle_number = 0
  current_natural_number = 1
  number_to_add_to_current_triangle_number = 2

  while current_leader_number_of_factors <= factors
    current_number_of_factors = count_factors_in_a_number(current_natural_number)

    if current_number_of_factors > current_leader_number_of_factors
      current_leader_number_of_factors = current_number_of_factors
      current_leader_triangle_number   = current_natural_number
      puts current_natural_number.to_s + " has " + current_number_of_factors.to_s
    end

    current_natural_number += number_to_add_to_current_triangle_number
    number_to_add_to_current_triangle_number += 1
  end

  return current_leader_triangle_number

end
puts return_first_triangle_number_with_more_than_the_following_number_of_factors(500)
