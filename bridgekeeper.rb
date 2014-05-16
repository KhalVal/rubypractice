#!/usr/bin/ruby

def intro
	puts "STOP!"
	puts "Who would cross the Bridge of Death must answer me"
	puts "these questions three, ere the other side he see."
	puts 'Enter "yes" or "no"'
end

def what_name
	puts "What is your name?"
	name = gets.chomp
end

def what_quest
	puts "What is your quest?"
	quest = gets.chomp
end

def what_color
	puts "What is your favorite color?"
	color = gets.chomp
	check_me = rand(101)
	if check_me > 50
		puts "Go on, off you go."
	else
		puts "Ahahaha! That is incorrect!"
		puts "You shall be thrown from the Bridge of Death!!!"
	end
end

def what_capital
	puts "What is the capital of Assyria?"
	capital = gets.chomp
	puts "Ahahahaha! That is incorrect!"
	puts "You shall be thrown from the Bridge of Death!!!"
end

def what_velocity
	puts "What is the airspeed velocity of an unladen swallow?"
	answer = gets.chomp
	if answer.end_with?("?")
		puts "Huh? I... I don't know that."
		puts "AAUUUUUUUUUGGHH!!!!!!"
		gameover
	else
		puts "Ahahahaha! That is incorrect!"
		puts "You shall be thrown from the Bridge of Death!!!"
	end
end

def gameover
	$play = "no"
end

def questioner
	what_name
	what_quest
	checker = rand(100)
	if checker > 66
		what_color
	elsif checker < 33
		what_capital
	else
		what_velocity
	end
end


$play = "yes"
intro
$play = gets.chomp
if $play.downcase == "yes"
	while $play.downcase == "yes"
		questioner
		puts " "
		if $play.downcase == "yes"	
			intro
			$play = gets.chomp
		else
			puts "..."
		end
	end
else	
puts "Then leave this place and never return...."
end
