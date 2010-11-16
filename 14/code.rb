#! /usr/bin/env ruby

def chain_length number
  length = 1
  
  while number>1
    if number%2 == 0
      number /= 2
    else
      number = (3*number)+1
    end
    length += 1
  end    
  
  return length

end

longest_chain = 1
number_with_longest_chain = 1

for i in 1...1000000 do
  candidate = chain_length(i)
  if candidate > longest_chain
    puts i
    longest_chain = candidate
    number_with_longest_chain = i
  end
end

puts number_with_longest_chain