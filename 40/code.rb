#!/usr/bin/env ruby -wKU

i = 1

n = "1"

while n.size < 1000000 do
  i = i + 1
  n = n + i.to_s
  puts n.size
end

num_array = n.split(//)

answer = num_array[0].to_i * num_array[9].to_i *  num_array[99].to_i *  num_array[999].to_i *  num_array[9999].to_i *  num_array[99999].to_i *  num_array[999999].to_i

puts answer