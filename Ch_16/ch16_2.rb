filename=ARGV.first

puts "We're going to erase #{filename}."
puts "If u don't want that, then hit CTRL-C (^C)."
puts "If u do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target=open(filename)
print target.read
#puts "Truncating the file.  Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask u for 3 lines."

print "line 1: "
line1=$stdin.gets.chomp
print "line 2: "
line2=$stdin.gets.chomp
print "line 3: "
line3=$stdin.gets.chomp

puts "I'm going to write these to the file."
target=open(filename, 'w')
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close