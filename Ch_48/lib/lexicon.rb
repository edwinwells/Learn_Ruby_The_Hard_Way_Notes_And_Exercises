class Lexicon

	def scan(fodder)

#  Divide the user-input into individual words (array:"words,") which will then be classified under the variable "type":
		words = fodder.split

# Then the corresponding "type" will be paired with the word, and thus categorized:

		newthing = Array.new
		words.each do |w|

		if w == "north" ||
			w == "south" ||
			w == "east" ||
			w == "west"
			type = "direction"
		elsif w == "go" ||
			  w == "kill" ||
			  w == "eat"
			  type = "verb"
		elsif w == "the" ||
			  w == "in" ||
			  w == "of"
			  type = "stop"
		elsif w == "bear" ||
			  w == "princess"
			  type = "noun"
		elsif w == "1234" ||
			  w == "3" ||
			  w == "91234"
			  type = "number"			  
		else type = "error"
		# puts w
		end

			if type == "number"
				newthing.push("#{type}")
				newthing.push("#{w}".to_i)
			else
				newthing.push("#{type}")
				newthing.push("#{w}")
			end
		end

		end_result = newthing.each_slice(2).to_a
		# return end_result
		# puts "\n"
		# print "words= #{words}"
		# puts "\n"
		# print "newthing= #{newthing}"
		# puts "\n"
		# puts "end_result= #{end_result}"
		# puts "\n"
print end_result
	end

this = Lexicon.new
fodder = "north"
this.scan(fodder)
# print end_result
end