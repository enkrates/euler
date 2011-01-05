#!/usr/bin/env ruby -wKU

def factorial n
  case n
    when 0
      value = 1
    when 1
      value = 1
    when 2
      value = 2
    when 3
      value = 6
    when 4
      value = 24
    when 5
      value = 120
    when 6
      value = 720
    when 7
      value = 5040
    when 8
      value = 40320
    when 9
      value = 362880
  end
  value
end

def get_array_of_digits number
  
  array = Array.new
  while number != 0
    digit = number % 10
    number = number / 10
    array.push(digit)
  end
  
  array
  
end

final_sum = 0

for i in 3..2540160 do
  sum = 0
  array = get_array_of_digits(i)
  array.map! {|x| factorial(x) }
  array.each {|x| sum += x }
  if i == sum
    puts i
    final_sum += i
  end
end

puts "Final sum is " + final_sum.to_s