print "Type the filename again: "
# Line 12 defines the variable "file_again"
file_again=$stdin.gets.chomp
# Line 14 defines the new variable "txt_again"
txt_again=open(file_again)
# Line 15 opens file contents to be read by user
print txt_again.read