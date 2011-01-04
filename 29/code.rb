#! /usr/bin/env ruby

terms = Array.new

for i in 2..100 do
  for j in 2..100 do
    terms.push(i**j)
  end
end

terms.uniq!

puts terms.size