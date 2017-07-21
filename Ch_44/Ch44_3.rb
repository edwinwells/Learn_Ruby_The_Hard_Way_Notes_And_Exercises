#3) Alter Before or After:

=begin
	
The third way to use inheritance is a special case of overriding where you want to alter the behavior before or after the Parent class's version runs. You first override the function just like in the last example, but then you use ** a Ruby built-in function named super ** to get the Parent version to call. Here's the example of doing that so you can make sense of this description:

=end

class Parent

	def altered()
		puts "PARENT altered"
	end
end

class Child < Parent

	def altered()
		puts "CHILD, BEFORE PARENT altered()"
		super()
		puts "CHILD, AFTER PARENT altered()"
	end
end

dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()


=begin

Running this in the cli gives:

PARENT altered <----(from Line#28, above)
CHILD, BEFORE PARENT altered() <----(ALL from Line #29)
PARENT altered                 <----(ALL from Line #29)
CHILD, AFTER PARENT altered()  <----(ALL from Line #29)

I call super(), which is aware of inheritance and will get the Parent class for me; at this point, the Parent.altered version of the function runs, and that prints out the Parent message.  Finally, this returns from the Parent.altered, and the Child.altered function continues to print out the after message.

=end