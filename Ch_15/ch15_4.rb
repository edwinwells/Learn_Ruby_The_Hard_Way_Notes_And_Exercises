filename = ARGV.first
txt = open(filename)
print txt.read
puts "Here's your file #{filename}:"
print "Type the filename again: "