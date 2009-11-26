def sum_of_natural_multiples_of_three_or_five number
  
  current_total = 0
  
  for i in 1...number 
    if ( i % 3 == 0 ) || ( i % 5 == 0 )
      current_total = current_total + i
    end      
  end
  
  return current_total
  
end

puts sum_of_natural_multiples_of_three_or_five(1000)