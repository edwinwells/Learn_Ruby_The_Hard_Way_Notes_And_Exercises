# Break up a sentence into individual words:

puts "Enter a sentence: "

stuff = $stdin.gets.chomp
words = stuff.split

#***Line 4 will take the sentence & create an Array.new named "words".

=begin
Tuple-
	A tuple is a finite ordered list of elements.

In mathematics, an n-tuple is a sequence (or ordered list) of n elements, where n is a non-negative integer. There is only one 0-tuple, an empty sequence. An n-tuple is defined inductively using the construction of an ordered pair.
=end

first_word = ['verb', 'go']
second_word = ['direction', 'north']
third_word = ['direction', 'west']
sentence = [first_word, second_word, third_word]
puts sentence

puts "\n"
puts stuff
puts "\n"
puts words
puts "\n"

# puts first_word
# puts second_word
# puts third_word
# puts sentence


=begin
This creates a pair [TYPE, WORD] that lets you look at the word and do things with it.

This is just an example, but that's basically the end result. You want to take raw input from the user, carve it into words with split, analyze those words to identify their type, and finally, make a sentence out of them.
=end

=begin

       *** Handling Exceptions: ***

>> Integer("hell")
ArgumentError: invalid value for Integer(): "hell"
     from (irb):1:in `Integer'
     from (irb):1
     from /usr/bin/irb:12:in `<main>'

     *** Is handled by code as follows, using
             "begin" & "rescue": ***
=end

def convert_number(object)
  begin
    return Integer(object)
  rescue
    return nil
  end
end     


=begin
	
             A Test First Challenge
Test first is a programming tactic where you write an automated test that pretends the code works, then you write the code to make the test actually work.

This method works when you can't visualize how the code is implemented, but you can imagine how you have to work with it.

For example, if you know how you need to use a new class in another module, but you don't quite know how to implement that class yet, then write the test first.	
=end