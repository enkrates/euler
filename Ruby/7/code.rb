def find_the_number_x_prime number
  
  array_of_primes = Array.new
  
  iterator = 2
  
  while array_of_primes.length < number
    counter = 0
    one_lower_than_item = iterator - 1
    for i in 2...one_lower_than_item
      if iterator % i == 0
        counter = counter + 1
      end
    end
    
    if counter == 0
      array_of_primes.push(iterator)
      puts "Prime number: #{array_of_primes.length} is #{iterator}"
    end
    
    iterator = iterator + 1
    
  end
  
  array_of_primes.delete(1)
  
  number_of_prime_to_return = number - 1
  
  return array_of_primes[number_of_prime_to_return]
  
end

puts find_the_number_x_prime(10005)