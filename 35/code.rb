#!/usr/bin/env ruby -wKU

@primes = Array.new
@circular_primes = Array.new

def is_prime number
  (2..Math.sqrt(number)).each do |x|
    if number % x == 0
      return false
    end
  end
  return true
end

(2..1000000).each do |x|
  if is_prime x
    @primes << x
    puts x
  end
end

# puts @primes

def all_rotations_of number
  return_array = [number]
  power = 1
  d = 1
  while d > 0
    power = power * 10
    d = number / power
  end
  power = power / 10
  iterations = power
  
  while iterations > 1
    first_number = number/power
    number = (number - (first_number * power))*10
    number = number + first_number
    return_array << number
    iterations = iterations/10
  end
  
  return_array.uniq!
  return_array
  
end

def is_circular_prime number
  rots = all_rotations_of number
  rots.each do |x|
    if !@primes.include?(x)
      return false
    end
  end
  return true
end

@primes.each do |x|
  if is_circular_prime x
    puts x
    @circular_primes << x
  end
end

puts @circular_primes.size