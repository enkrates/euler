#! /usr/bin/env ruby

def factorial n
  if n == 1
    return 1
  else
    return n*factorial(n-1)
  end
end

def add_digits n
  sum = 0

  while n > 0
    sum += n%10
    n = n/10
  end
  return sum
end

puts add_digits(factorial(100))