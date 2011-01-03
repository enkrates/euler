#! /usr/bin/env ruby


def sum_of_proper_divisors number
  
  sum = 1
  
  for i in 2...number do
    if number % i == 0
      sum += i
    end
  end
  
  sum
    
end

amicable_numbers = Array.new

first = 0
second = 0
sum = 0

for i in 1..10000 do
  
  first = sum_of_proper_divisors i
  if first != i
    second = sum_of_proper_divisors first
  
    if (second == i)
      amicable_numbers.push(first, second)
    end
  end
end

amicable_numbers.uniq!

amicable_numbers.each do |i|
  sum += i
end

puts sum