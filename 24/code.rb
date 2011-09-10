#!/usr/bin/env ruby -wKU


def permutations array
  
  if array.size == 1
    return [array]
  else
    
    new_array = Array.new
    
    last_item = array.pop
    
    array_of_permutations = permutations(array)
    
    for i in 0..array_of_permutations.size
      for j in 0...array_of_permutations[i].size
        current_array = array_of_permutations[i]
        new_array << current_array.insert(j, last_item)
      end
    end
    
    return new_array
    
  end
  
end

puts permutations [2, 1]