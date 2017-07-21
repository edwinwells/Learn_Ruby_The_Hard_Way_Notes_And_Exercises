# Define the variable input_file using ARGV:
input_file=ARGV.first
# Define the print_all function:
def print_all(f)
	puts f.read
end
# Define the rewind function:
def rewind(f)
	f.seek(0)
end
# Define the print_a_line function:
def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"
end
# Define the current_file function:
current_file = open(input_file)
# Make a statement to user, then goto a new line:
puts "First, let's print the whole file:\n"
# Call the print_all function, to print the entire file contents:
print_all(current_file)
# Make another statement, telling the user we're "backing-up":
puts "Now let's rewind, kind of like a tape."
# Call the rewind function, using the current_file variable as its argument:
rewind(current_file)
# Make another statement, explaining to the user that we will print 3 lines from
# the file:
puts "Let's print 3 lines:"
# Create the current_line variable, assign it a value, then pass it on to the
# print_a_line function when it is called:
current_line=1
print_a_line(current_line, current_file)
# Modify the current_line variable, and call the print_a_line function again:
current_line=current_line+1
print_a_line(current_line,current_file)
# Modify the current_line variable, and call the print_a_line function again:
current_line=current_line+1
print_a_line(current_line, current_file)