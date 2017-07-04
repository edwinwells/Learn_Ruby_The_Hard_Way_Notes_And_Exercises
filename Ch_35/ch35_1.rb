def gold_room
	puts "This room is full of gold.  How much do you take?"

	print"> "
	choice=$stdin.gets.chomp

	#this line has a bug, so fix it:
	if choice.include?("0") || choice.include?("1")
		how_much=choice.to_i
	else
		dead("Man, learn to type a number.")
	end

	if how_much<50
		puts "Nice, ur not greedy, you win!"
		exit(0)
	else
		dead("You greedy bastard!")
	end
end


def bear_room
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How r u going 2 move the bear?"
	bear_moved=false

	while true
		print"> "
		choice=$stdin.gets.chomp

		if choice=="take honey"
			dead("The bear looks at u then slaps ur face off.")
		elsif choice=="taunt bear" && !bear_moved
			puts "The bear has moved from the door. U can go thru now."
			bear_moved=true
		elsif choice== "taunt bear" && bear_moved
			dead("The bear gets pissed off & chews ur leg off.")
		elsif choice== "open door" && bear_moved
			gold_room
		else
			puts "I got no idea what that means."
		end
    end
end

def cthulhu_room
	puts "Here u c the great evil Cthulhu."
	puts "He, it, whatever stares at u & u go insane."
	puts "Do u flee 4 ur life or eat ur head?"

	print "> "
	choice=$stdin.gets.chomp

	if choice.include? "flee"
		start
	elsif choice.include? "head"
		dead("Well, that was tasty!")
	else
		cthulhu_room
	end
end


def dead(why)
	puts why, "Good job!"
	exit(0)
end

def start
	puts "U r in a dark room."
	puts "There is a door on ur right & left."
	puts "Which one do u take?"

	print "> "
	choice=$stdin.gets.chomp

	if choice=="left"
		bear_room
	elsif choice=="right"
		cthulhu_room
	else
		dead("U stumble around the room until u starve.")
	end
end

start