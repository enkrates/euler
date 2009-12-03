#!/usr/bin/env ruby
# 
# http://projecteuler.net/index.php?section=problems&id=1

class EulerNumber
  
  def initialize(integer)
    @number = integer
  end
  
  def sum_of_natural_multiples_of_three_or_five
    current_total = 0
  
    for i in 1...@number 
      if ( i % 3 == 0 ) || ( i % 5 == 0 )
        current_total = current_total + i
      end      
    end
  
    return current_total
  end
end