types_of_people=10
x="There are #{types_of_people} types of people."
binary="binary"
do_not="don't"
y="Those who know #{binary} and those who #{do_not}."
# 7&8 prints the two strings valued above
puts x
puts y
# 10&11 repeats
puts "I said: #{x}."
puts "I also said: '#{y}'."
# 13&14 define 2 additional variables
hilarious = false
joke_evaluation= "Isn't that joke so funny?! #{hilarious}."
# 16 prints a string using both newly defined variables
puts joke_evaluation
# 18&19 defines 2 additional variables
w= "This is the left side of..."
e= "a string with a right side."
# 21 combines the two variables in one line
puts w+e