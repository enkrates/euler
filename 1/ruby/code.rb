#!/usr/bin/env ruby
# 
# http://projecteuler.net/problem=1

class EulerNumber
  
  def initialize(integer)
    @number = integer
  end

  def sum_of_natural_multiples_of_three_or_five
    return (1...@number).to_a.keep_if {|v| (v % 3 == 0 || v % 5 == 0)}.reduce(:+)
  end
end