#              ** COMPOSITION: **

=begin
	
Inheritance is useful, but another way to do the exact same thing is just to use other classes and modules, rather than rely on implicit inheritance. If you look at the three ways to exploit inheritance, two of the three involve writing new code to replace or alter functionality. This can easily be replicated by just calling functions in a module. Here's an example of doing this:

=end

class Other

	def override()
		puts "OTHER override()"
	end

	def implicit()
		puts "OTHER implicit()"
	end

	def altered()
		puts "OTHER altered()"
	end
end

class Child

	def initialize
		@other = Other.new()
	end

	def implicit()
		@other.implicit()
	end

	def override()
		puts "CHILD override()"
	end

	def altered()
		puts "CHILD, BEFORE OTHER altered()"
		@other.altered()
		puts "CHILD, AFTER OTHER altered()"
	end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

=begin

In this code I'm not using the name Parent, since there is not a parent-child is-a relationship. This is a has-a relationship, where Child has-a Other that it uses to get its work done. 

Running this in the cli gives:

OTHER implicit()
CHILD override()
CHILD, BEFORE OTHER altered()
OTHER altered()
CHILD, AFTER OTHER altered()

=end