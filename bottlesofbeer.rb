#!/usr/bin/env ruby

def how_many bottles
	while bottles > 0
		puts "#{bottles} bottles of beer on the wall,"
		puts "#{bottles} bottles of beer."
		puts "Take one down,"
		puts "Pass it around,"
		bottles = bottles - 1
		if bottles > 0
			puts "#{bottles} bottles of beer on the wall."
		else
			puts "No more bottles of beer on the wall!"
		end
		puts " "
	end
end

puts "How many bottle of beer are on the wall?"
bottles = gets.chomp.to_i
how_many(bottles)


