i=0
numbers=[]

while i<6
	puts "At the top i is #{i}"
	numbers.push(i)

	i+=1
	puts "Numbers now: ",numbers
	puts "At the bottom is #{i}"
end

puts "The numbers: "

# remember u can write this 2 other ways

	#ONE WAY:
	#numbers.each {|num| puts num}

	#ANOTHER WAY:
	#(0..5).each do |num|
	#puts"#{num}"
	#numbers.push(num)
	#end

	#THIRD WAY:
	numbers.each do|numbers|
	puts numbers
	end