#!/usr/bin/env ruby -wKU

def permutations_and_new_digit(permutations, new_digit)
  size = permutations.size
  new_permutations = Array.new
  
  permutations.each do |x|
    for i in 0...size do
      x.insert i, new_digit
    end
  end
  permutations
end

def all_permutations number
  
  if number.size == 1
    return number
  else
    permutations = []
    permutations_and_new_digit(
  end
end



puts all_permutations "01"