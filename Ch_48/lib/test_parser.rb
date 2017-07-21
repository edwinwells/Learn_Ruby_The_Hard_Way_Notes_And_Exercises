require_relative 'parser.rb'

x = Sentence.new("unknown", "run", "north")
x.parse_sentence([['verb', 'run'], ['direction', 'north']])
# puts x
# puts x(0)
# puts verb
# puts object