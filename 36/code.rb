#!/usr/bin/env ruby -wKU

def is_palindromic number
  array = number.to_s.split('')
  while array.size > 1
    a = array.slice!(0)
    b = array.slice!(-1)
    if a != b
      return false
    end
  end
  return true
end

def to_binary number
  binary = ""
  while number > 0
    if number.odd?
      binary += "1"
    else
      binary += "0"
    end
    number /= 2
  end
  binary
end

final_sum = 0

for i in 1...1000000 do
  bin = to_binary(i)
  if is_palindromic(i) && is_palindromic(bin)
    puts i.to_s + " and " + bin.to_s + " are palindromic" 
    final_sum += i
  end
end

puts final_sum