#! /usr/bin/env ruby

first = 1
second = 1
latest = 2
term_number = 3

while latest < 10**999
  first = second
  second = latest
  latest = first + second
  term_number +=1
end

puts term_number