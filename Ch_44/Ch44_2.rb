#2) Override Explicitly:

class Parent

	def override()
		puts "PARENT override"
	end
end

class Child < Parent

	def override()
		puts "CHILD override"
	end
end

dad = Parent.new()
son = Child.new()

dad.override()
son.override()

=begin
	
Running this in the cli gives:

PARENT override
CHILD override

=end




