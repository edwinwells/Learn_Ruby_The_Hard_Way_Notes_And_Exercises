# Line 2 applies the argument as also the filename
filename = ARGV.first
# Line 4 defines the variable txt
txt = open(filename)
# Line 6 prints what is in the file
print txt.read
# Line 8 adds a statement
puts "Here's your file #{filename}:"
# Line 10 seeks user input
print "Type the filename again: "
# Line 12 defines the variable "file_again"
file_again=$stdin.gets.chomp
# Line 14 defines the new variable "txt_again"
txt_again=open(file_again)
# Line 15 opens file contents to be read by user
print txt_again.read