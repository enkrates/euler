#! /usr/bin/env ruby

number = 2**1000

sum = 0
divisor = 10

while number > 0
  sum += number%divisor
  number = number/divisor
end

puts sum