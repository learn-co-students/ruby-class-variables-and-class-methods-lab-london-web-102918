class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genres_count = @@genres.reduce(Hash.new(0)) { |g, num| g[num] +=1; g }
  end

  def self.artist_count
    artists_count = @@artists.reduce(Hash.new(0)) { |a, num| a[num] +=1; a  }
  end

end
