#!/usr/bin/env ruby -wKU

@abundant_numbers = Array.new

@sums_of_abundant_numbers = []

@sum = 0

def is_abundant number
  factors = 1
  upper = Math.sqrt(number).floor
  (2..upper).each do |x|
    if number % x == 0
      factors = factors + x + (number/x)
    end
  end
  if factors > number
    return true
  else
    return false
  end
end

# puts is_abundant 14

(1..28123).each do |x|
  if is_abundant x
    @abundant_numbers << x
  end
end

# puts @abundant_numbers

@abundant_numbers.each do |x|
  #puts x
  @abundant_numbers.each do |y|
    sum = x+y
    @sums_of_abundant_numbers << sum
  end
end

#@sums_of_abundant_numbers.uniq!
@sums_of_abundant_numbers.sort!
#puts @sums_of_abundant_numbers

(1..28123).each do |x|
  puts "Trying " + x.to_s
  if !@sums_of_abundant_numbers.include?(x)
    @sum = @sum + x
    puts "Current sum: " + @sum.to_s
  end
end
# 3921523
puts "The sum is " + @sum.to_s

# (1..28123).each do |x|
#   puts "Trying " + x.to_s
#   @abundant_numbers.each do |y|
#     
#   end
# end