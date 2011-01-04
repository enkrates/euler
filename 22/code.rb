#! /usr/bin/env ruby

file = File.new("names.txt", "r")

myArray = Array.new

file.each_line(",") {|line| myArray.push(line) }

myArray.each do |item|
  item.gsub!(/[\" ,]/, '')
end

myArray.sort!

sum = 0
name = 0
name_counter = 0

myArray.each do |item|
  name_counter += 1
  item.each_byte do |c|
    name += (c-64)
  end
  sum += name*name_counter
  name = 0
end

puts sum