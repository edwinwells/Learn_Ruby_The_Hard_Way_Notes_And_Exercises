# First, define the function- exactly what it will do each time it is called:
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man, that's enough for a party!!!"
	puts "Get a blanket.\n"
end
# Call the function, and...
# Assign argument values at the call-site:
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)
# or...
# Assign the values to variables, then utilize the variables in the call:
puts "Or, we can use variables from our script:"
amount_of_cheese=10
amount_of_crackers=50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)
# or...
# Call the function, then utilize arithmetic in the argument parentheses"
puts "We can even do math inside too:"
cheese_and_crackers(10+20,5+6)
# or, finally...
# utilize BOTH variables aAND arithmetic inside the argument parenthesis:
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100,amount_of_crackers +1000)