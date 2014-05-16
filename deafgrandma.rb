#!/usr/bin/ruby

puts "WELL HELLO THERE, SONNY!"

response = gets.chomp

while response != ("BYE" or "BYE!")
	if (response == response.upcase)
		she_says = rand(101)
		if 50 < she_says
			year = rand(1940...1990)
			puts "NO, NOT SINCE #{year}!"
		elsif 30 > she_says 
			puts "YOUR MOTHER SAID WHAT?"
		else 
			puts "I THINK SO TOO, DEAR!"
		end
	else
		puts "YOU'LL HAVE TO SPEAK UP THERE, SONNY!"
	end
	response = gets.chomp
end

puts "YES, WITH WHIPPED CREAM!!"
