

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = [] # to be able to add new objects to
  end

  def add_song(song)
    @songs << song # every instance of a song gets shoveled into this
    #why does the test fail when we make @song = [] a class variable?
    #shouldn't it work the same way?
    song.artist = self

    @@song_count += 1
  end

  def add_song_by_name(name)
    new_song = Song.new(name) #instantiating a new SONG object within this class! 
    @songs << new_song #same questions as above
    new_song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end
end
