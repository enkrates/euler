#!/usr/bin/env ruby -wKU
require 'pp'

@triangle = [
[75],
[95, 64],
[17, 47, 82],
[18, 35, 87, 10],
[20, 04, 82, 47, 65],
[19, 01, 23, 75, 03, 34],
[88, 02, 77, 73, 07, 63, 67],
[99, 65, 04, 28, 06, 16, 70, 92],
[41, 41, 26, 56, 83, 40, 80, 70, 33],
[41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
[53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
[70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
[91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
[63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
[04, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 04, 23]
]
size = @triangle.size
# pp @triangle[size-1]

def get_largest_sum array
  puts array.size
  asmo = array.size - 1
  asmo.downto(1) { |row|
    puts row
    0.upto(row-1) { |col|
      puts array[row][col]
      puts array[row][col+1]
      puts array[row-1][col]
      array[row-1][col] += [array[row][col], array[row][col+1]].max
      array[row-1][col]
    }
  }
  pp array
  array[0][0]
end

puts get_largest_sum @triangle

def add_max_to_curent_value current_row, current_column
  
end
