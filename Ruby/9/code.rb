# 3 natural numbers
#
# a < b < c
# 
# a^(2) + b^(2) = c^(2)
# 
# a + b + c = 1000 (max of 332, 333, 334)
# 
# what is a * b * c

potential_matches = Array.new
this_array = Array.new
(100..1000).each do |x|
  
  (x..1000).each do |y|
      z = 1000 - (x + y)
      if z > y
        
        puts "Trying #{x}, #{y}, and #{z}"
        
        x_squared = x * x
        y_squared = y * y
        z_squared = z * z
        
        what_x_squared_plus_y_squared_actually_equals = x_squared + y_squared
        
        if (what_x_squared_plus_y_squared_actually_equals == z_squared)
          final_product = x * y * z
          puts "The trio is #{x}, #{y} and #{z} and their product is #{final_product}"        
        else
          
          #puts "#{x_squared} plus #{y_squared} equals #{what_x_squared_plus_y_squared_actually_equals}, which isn't #{z_squared}, which sucks."
        
        end
        
      end
      
      # potential_matches.push([x, y, z])
      # puts potential_matches.to_s
    
    

  end
  
  
end