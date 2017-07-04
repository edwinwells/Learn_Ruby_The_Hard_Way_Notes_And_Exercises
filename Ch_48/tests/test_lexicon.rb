require "./lib/lexicon.rb"
require "test/unit"

class TestLexicon < Test::Unit::TestCase

	def test_directions()
		this = Lexicon.new()
	    assert_equal(this.scan("north"), [['direction', 'north']])
	    result = this.scan("north south east")
	    assert_equal(result, [['direction', 'north'],
	           ['direction', 'south'],
	           ['direction', 'east']])
	end

	def test_verbs()
		this = Lexicon.new()
	    assert_equal(this.scan("go"), [['verb', 'go']])
	    result = this.scan("go kill eat")
	    assert_equal(result, [['verb', 'go'],
	           ['verb', 'kill'],
	           ['verb', 'eat']])
	end

	def test_stops()
		this = Lexicon.new()
	    assert_equal(this.scan("the"), [['stop', 'the']])
	    result = this.scan("the in of")
	    assert_equal(result, [['stop', 'the'],
	           ['stop', 'in'],
	           ['stop', 'of']])
	end

	def test_nouns()
		this = Lexicon.new()
	    assert_equal(this.scan("bear"), [['noun', 'bear']])
	    result = this.scan("bear princess")
	    assert_equal(result, [['noun', 'bear'],
	           ['noun', 'princess']])
	end

	def test_numbers()
		this = Lexicon.new()
	    assert_equal(this.scan("1234"), [['number', 1234]])
	    result = this.scan("3 91234")
	    assert_equal(result, [['number', 3],
	           ['number', 91234]])
	end

	def test_errors()
		this = Lexicon.new()
	    assert_equal(this.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
		result = this.scan("bear IAS princess")
	    assert_equal(result, [['noun', 'bear'],
	           ['error', 'IAS'],
	           ['noun', 'princess']])
	end

	def test_another_combination()
		this = Lexicon.new()
	    assert_equal(this.scan("bear"), [["noun", "bear"]])
	    result = this.scan("go north")
	    assert_equal(result, [['verb', 'go'], ['direction', 'north']])
	end

end