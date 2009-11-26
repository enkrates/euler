def fibonacci_numbers_up_to number
  
  fibonacci_array = Array.new
  
  fibonacci_array.push(1, 2)
  
  new_fibonacci_number = 0
  
  while new_fibonacci_number < number
    
    new_fibonacci_number = fibonacci_array[-1] + fibonacci_array[-2]
    
    fibonacci_array.push(new_fibonacci_number)
    
  end
  
  if fibonacci_array[-1] >= number
    
    fibonacci_array.delete_at(-1)
    
  end
  
  return fibonacci_array
  
end

def find_even_numbers_in_an_array array
  
  array_of_evens = Array.new
  
  array.each do |item|
    if item % 2 == 0
      array_of_evens.push(item)
    end
  end
  
  return array_of_evens
end

def add_an_array array
  current_total = 0
  array.each do |x|
    current_total = current_total + x
  end
  return current_total
end

fibonacci_numbers_up_to_four_million = fibonacci_numbers_up_to(4000000)

even_fibonacci_numbers_up_to_four_million = find_even_numbers_in_an_array(fibonacci_numbers_up_to_four_million)

sum_of_even_fibonacci_numbers_up_to_four_million = add_an_array(even_fibonacci_numbers_up_to_four_million)

puts sum_of_even_fibonacci_numbers_up_to_four_million.to_s