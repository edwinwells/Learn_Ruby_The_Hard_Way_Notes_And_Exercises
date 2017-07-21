=begin
	The assignment for Chapter 45 is to write a new game; my mentor & I decided that a class for the player's Action should be added, and the existing class named Map ought to be named World. 
	The code follows:
=end
class Scene
	def enter()
		puts "This scene is not yet configured. Subclass it & implement enter()."
		exit(1)
	end
end

class Heaven < Scene

	@@quips = [
		"You died.  St. Peter's checking for your name on the list...",
		"You died.  You're floating around on a cloud in heaven...",
		"You died.  You're enjoying ambrosia to your heart's content in heaven...",
		"You died.  You're reincarnated as a snail- enjoy your new miserable existence!"
	]

	def enter()
		puts @@quips[rand (0..(@@quips.length-1))]
		puts "\n"
		exit(1)
	end
end

class Entranceway < Scene
	def enter()
		puts "\n"
		puts "You are in the entranceway to an ancient castle. There are doors to the North, South, East & West.  Which one do you choose?"
		puts "\n"
		print "> "
		decide = EntrancewayAction.new()
		decide.action_choice()
	end
end

class Treasury < Scene
	def enter()
		puts "\n"
		puts "Ok. After your pilfering, you have to decide which door to take now.  There is one on the East, which you just came thru'.  Then there are doors to the North, South & West.  Which one do you choose?"
		puts "\n"
		print "> "
		decide = TreasuryAction.new()
		decide.action_choice()		
	end
end

class TheArmory < Scene
	def enter()
			puts "\n"
			puts "Now, there are only 3 doors in this room.  One is the eastern door, which you just came thru'.  The other two are West, and North.  Choose carefully..."
			puts "\n"
		print "> "

		decide = ArmoryAction.new()
		decide.action_choice()
	end
end

class Roof < Scene
	def enter()
		puts "\n"
		puts "You're on the roof of the castle!"
		puts "\n"
		puts "Off in the distance, you see a tiny speck on the distant hoqizon, offset by the sunset.  It could be help on the way!"
		puts "\n"
		puts "Do you wave your arms & jump up & down like a fool (wave), or hesitate?"
		puts "\n"
		print "> "

		decide = RoofAction.new()
		decide.action_choice()	
	end
end

class Rescued < Scene
	def enter()
		puts "You won! Good job."
	end
end

class Finished < Scene
	def enter()
		puts "\n"
		puts "You won! Good job."
		puts "\n"
	end
end
class World
	@@scenes = {
		'entranceway' => Entranceway.new(),
		'treasury' => Treasury.new(),
		'armory' => TheArmory.new(),
		'roof' => Roof.new(),
		'heaven' => Heaven.new(),
		'rescued' => Rescued.new(),
		'finished' => Finished.new(),
	}


	def initialize(start_scene)
		@start_scene = start_scene
	end

	def next_scene(scene_name)
		val = @@scenes[scene_name]
		return val
	end

	def opening_scene()
		return next_scene(@start_scene)
	end
end

class Action

	def action_choice()
		puts "This sector is not yet configured. Subclass it & implement action_choice()."
		exit(1)
	end
end

class EntrancewayAction < Action

	def action_choice()
		action = $stdin.gets.chomp


		if action.downcase == "north"
			puts "\n"
			puts "Poor choice!  You open the door and Cerberus, who hasn't eaten all day, makes lunch of you!"
			puts "\n"
			return 'heaven'

		elsif action.downcase == "south"
			puts "\n"
			puts "No, not that door!  A thousand poisoned darts pierce your body like a pin-cushion."
			puts "\n"
			return 'heaven'

		elsif action.downcase == "east"
			puts "\n"
			puts "Why did you do THAT?!  A red-dragon instantaneously blasts you with fire, throws you on a hot-dog bun & swallows you whole."
			puts "\n"
			return 'heaven'
		elsif action.downcase == "west"
			puts "\n"
			puts "Good choice.  You enter a treasury & see a pile of gold.  Not greedy, you pocket only 100 gold-pieces."
			puts "\n"
			return 'treasury'
		else
			puts "DOES NOT COMPUTE!"
			return 'entranceway'
		end
	end
end

class TreasuryAction < Action

	def action_choice()
		action = $stdin.gets.chomp


		if action.downcase == "north"
			puts "\n"
			puts "Talk about a 'bad day'! A knight in black armour cuts you down to size with an 8-foot long-sword."
			puts "\n"
			return 'heaven' 

		elsif action.downcase == "south"
			puts "\n"
			puts "OMG. WHAT were you thinking?! Shelob the spider spins you like a top in her web, and says that in about a week, you'll make a nice appetizer."
			puts "\n"
			return 'heaven'

		elsif action.downcase == "east"
			puts "\n"
			puts "Why the heck would you go BACKWARDS?  Come on man! Try again-"
			puts "\n"
			print "> "
			# return 'treasury'
			again = TreasuryAction.new()
			again.action_choice()			
		elsif action.downcase == "west"
			puts "\n"
			puts "Good choice.  You enter an armoury & pick out a nice silver sword, with a crescent-moon handle, along with the perfectly sized, bejeweled sheath."
			return 'armory'
		else
			puts "DOES NOT COMPUTE!"
			return 'treasury'
		end
	end
end
#********
# ArmoryAction
class ArmoryAction < Action

	def action_choice()
		action = $stdin.gets.chomp


		if action.downcase == "west"
			puts "\n"
			puts "What?  Just 'cause West has worked all day, you thought there wasn't a trick?  Now, a thousand hobgoblins flood thru' the door & grip you up & prepare to sacrifice you to their god!!!"
			puts "\n"
			return 'heaven' 

		elsif action.downcase == "east"
			puts "\n"
			puts "No, no no!  No turning back now, lad! As you push the door, it magically slams back in your face & is sealed with a spell!  Try again..."
			puts "\n"
			print "> "
			# return 'armory'
			again = ArmoryAction.new()
			again.action_choice()
		elsif action.downcase == "north"
			puts "\n"
			puts "Oh, you are SOOOO lucky you picked that door.  You just don't know!"
			puts "\n"
			puts "OK. You see a winding staircase going up into the heights.  You start climbing..."
			puts "\n"
			return 'roof'
		else
			puts "DOES NOT COMPUTE!"
			return 'armory'
		end
	end
end
#********
# RoofAction
class RoofAction < Action

	def action_choice()
		action = $stdin.gets.chomp


		if action.downcase == "wave"
			puts "\n"
			puts "There you go!  The dot in the distance begins rapidly increasing in size.  You see that as it approaches you, it is a Giant Eagle.  He swoops down, grips you lightly with his talons & sails you swiftly across the sky to the nearest town, and softly drops you off.  Yoy thank him & head for the nearest tavern, tired, hungry & thirsty, but with a few gold coins in your pocket, a new sword & a long tale to tell..."
			puts "\n"
			return 'finished' 

		elsif action.downcase == "hesitate"
			puts "\n"
			puts "Well, the dot on the horizon vanishes.  You grow old on the castle's roof-top..."
			puts "\n"
			return 'heaven'
		else
			puts "DOES NOT COMPUTE!"
			return 'roof'
		end
	end
end
#********

class Engine
	def initialize(scene_map)
		@scene_map = scene_map
	end

	def play()
		current_scene = @scene_map.opening_scene()
		last_scene =@scene_map.next_scene('finished')
	
		while current_scene != last_scene
			next_scene_name = current_scene.enter()
			current_scene = @scene_map.next_scene(next_scene_name)
		end

		#be sure to print-out the last scene
		current_scene.enter()
	end
end	

a_map = World.new('entranceway')
a_game = Engine.new(a_map)
a_game.play()



