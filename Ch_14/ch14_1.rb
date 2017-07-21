user_name=ARGV.first # gets the first argument
prompt='> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do u like me #{user_name}?"
puts prompt
likes=$stdin.gets.chomp

puts "Where do u live #{user_name}?"
puts prompt
lives=$stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do u have? ", prompt
computer=$stdin.gets.chomp

puts """
Alright, so you said #{likes} sbout liking me.
You live in #{lives}.  Not sure where that is.
And u have a #{computer} computer.  NIce,
"""