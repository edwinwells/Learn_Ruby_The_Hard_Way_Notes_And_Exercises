class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

nextlyrics = ["It was an April morning", "When they told us we should go", "And as I turned to you, you smiled at me", "How could we say 'No'?"]

Achilles = Song.new(nextlyrics)


happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])


puts ""
Achilles.sing_me_a_song
puts ""

happy_bday.sing_me_a_song()
puts ""
bulls_on_parade.sing_me_a_song()