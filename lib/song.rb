class Song

  @@all = []
  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre| count[genre] ? count[genre] += 1 : count[genre] = 1
      end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist| count[artist] ? count[artist] += 1 : count[artist] = 1 
      end
    count
  end


end
