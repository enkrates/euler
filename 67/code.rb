#!/usr/bin/env ruby -wKU

require 'pp'

def get_largest_sum array
  asmo = array.size - 1
  asmo.downto(1) { |row|
    0.upto(row-1) { |col|
      array[row-1][col] = array[row-1][col].to_i + [array[row][col].to_i, array[row][col+1].to_i].max
    }
  }
  array[0][0]
end

rows = Array.new

file = File.new("triangle.txt", "r")
while (line = file.gets)
  rows << line.chop.split(" ")
end
file.close
# 
# 
# 
# 
# rows.each do |row|
#   row.map { |e| e = e.to_i }
# end
# pp rows

puts get_largest_sum rows