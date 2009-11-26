def get_highest_palindrome

palindrome_array = Array.new

for i in 100..999
  
  for j in 100..999
    
    product = i * j
    
    if product.to_s == product.to_s.reverse
      
      palindrome_array.push(product)
      
    end
    
  end
  
end
  
  sorted_palindrome_array = palindrome_array.sort
  
  sorted_palindrome_array = sorted_palindrome_array.reverse
  
  return sorted_palindrome_array[0]
  
end

puts get_highest_palindrome()