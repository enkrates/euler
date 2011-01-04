#! /usr/bin/env ruby

sum = 1
additive = 2
multiple = 2

for i in 1..2000 do
  sum += (additive+1)
  if i % 4 == 0
    multiple += 2
  end
  additive += multiple    
end

puts sum