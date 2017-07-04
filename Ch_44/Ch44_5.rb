# Using super() with initialize:

=begin

The most common use of super() is actually in initialize functions in base classes. This is usually the only place where you need to do some things in a child, then complete the initialization in the parent. Here's a quick example of doing that in the Child from these examples:


class Child < Parent

	def initialize(stuff)
		@sttuff = stuff
		super()
	end
end

=end

