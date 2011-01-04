#! /usr/bin/env ruby

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

for i in 2..354294 do # 354294 is chosen because no seven digit or more number can possibly be one
                      # of these numbers and 354294 is the largest such value from a six digit number
  sum = 0
  array = get_array_of_digits(i)
  array.map! {|x| x**5 }
  array.each {|x| sum += x }
  if i == sum
    final_sum += i
  end
end

puts "Final sum is: " + final_sum.to_s