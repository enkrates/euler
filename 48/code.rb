#! /usr/bin/env ruby

sum = 0

for i in 1...1000 do
  sum = sum += i**i
end

puts sum