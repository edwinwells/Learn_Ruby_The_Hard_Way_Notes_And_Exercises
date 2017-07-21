module EX25

	# This function will break up words for us.
	def EX25.break_words(stuff)
		words=stuff.split(' ')
		return words
	end

	# Sorts the words.
	def EX25.sort_words(words)
		return words.sort_by { |e|  }
	end

	# Prints the first word after shifting it off.
	def EX25.print_first_word(words)
		word=words.shift
		puts word
	end

	# Prints the last word after popping it off.
	def EX25.print_last_word(words)
		word=words.pop
		puts word
	end

	# Takes in a full sentence & returns the sorted words.
	def EX25.sort_sentence(sentence)
		words=EX25.break_words(sentence)
		return EX25.sort_words(words)
	end

	# Prints the first & last words of a sentence.
	def EX25.print_first_and_last(sentence)
	words=EX25.break_words(sentence)
	EX25.print_first_word(words)
	EX25.print_last_word(words)
	end

	# Sorts the words then prints the first & last one.
	def EX25.print_first_and_last_sorted(sentence)
		words=EX25.sort_sentence(sentence)
		EX25.print_first_word(words)
		EX25.print_last_word(words)
	end

end