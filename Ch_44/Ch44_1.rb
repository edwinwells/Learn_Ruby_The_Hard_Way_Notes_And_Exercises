=begin          **INHERITANCE**

3 types:
	1)  Implicit Inheritance- Actions on the child imply an action on the parent;
	2)  Override Explicitly- Actions on the child override the action on the parent; and
	3)  Alter Before or After- Actions on the child alter the action on the parent.

	EXAMPLES OF EACH (first here, then Ch44_2.rb & Ch44_3.rb:
=end

#1) Implicit Inheritance:

class Parent

	def implicit()
	puts "PARENT implicit()"
	end
end

class Child < Parent

end

dad = Parent.new()
son = Child.new()
	
dad.implicit()
son.implicit()

=begin
	
Running this in the cli gives:
PARENT implicit()
PARENT implicit()
	
** This shows you that if you put functions in a base class (i.e., Parent), then all subclasses (i.e., Child) will automatically get those features. Very handy for repetitive code you need in many classes. **

=end