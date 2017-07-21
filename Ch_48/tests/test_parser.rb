require_relative "parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase

	def test_parse()
		this = Sentence.new("player", "run", "north")
		# that = Sentence.new("player", "run", "north")

	    result = this.parse_sentence([['noun', 'player'], ['verb', 'run'], ['direction', 'north']])
		    assert_equal(result, [['noun', 'player'],
		           ['verb', 'run'],
		           ['direction', 'north']])
	end


		# x = this.parse_sentence([['noun', 'player'], ['verb', 'run'], ['direction', 'north']])
#*********************************************
	# this.parse_sentence([['noun', 'player'], ['verb', 'run'], ['direction', 'north']])
#*********************************************

# print this.subject
#=> "player"
# print this.verb
#=> "run"
# print this.object
#=> "north"



	#     assert_equal(this.scan("north"), [['direction', 'north']])


	#     assert_equal(result, [['direction', 'north'],
	#            ['direction', 'south'],
	#            ['direction', 'east']])
	# end

end