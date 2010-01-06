#!/usr/bin/env ruby

def find_smallest_factorable_number array_of_numbers
  
  answer = 0
  
  iterator = 1
  
  while answer == 0
    puts iterator
    
    number_of_matches = 0
    
    array_of_numbers.each do |number|
      if iterator % number == 0
        number_of_matches = number_of_matches + 1
      else
        break
      end
    end
    
    if number_of_matches == array_of_numbers.length
      answer = iterator
      break
    else
      iterator = iterator + 1
      
    end
    
  end
  
  return answer
    
end

number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

#puts number_array.length

#puts find_smallest_factorable_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])

puts find_smallest_factorable_number(number_array)