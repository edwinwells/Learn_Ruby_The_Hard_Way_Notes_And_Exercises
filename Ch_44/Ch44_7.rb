#              ** mixins **

=begin
	
Ruby has another way to do composition using modules and a concept called mixins. You simply create a module with functions that are common to classes and then include them in your class similar to using a require. Here's this same composition example done using modules and mixins.
	
=end

module Other

	def override()
		puts "OTHER override()"
	end

	def implicit()
		puts "OTHER implicit()"
	end

	def Other.altered()
		puts "OTHER altered()"
	end
end

class Child
	include Other

	def override()
		puts "CHILD override()"
	end

	def altered()
		puts "CHILD, BEFORE OTHER altered()"
		Other.altered()
		puts "CHILD, AFTER OTHER altered()"
	end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

=begin

Running this in the cli gives:

OTHER implicit()
CHILD override()
CHILD, BEFORE OTHER altered()
OTHER altered()
CHILD, AFTER OTHER altered()

=end