# require "pry"
class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name,artist,genre)
    @name  = name
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

def self.artists
  @@artists.uniq
end

def self.count
 @@count
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  count = {}
@@genres.each {|x| count[x]? count[x] +=1 : count[x] = 1}
count
end

def self.artist_count
count = {}
@@artists.each {|x| count[x]? count[x] +=1 : count[x] = 1}
count
end

end



# binding.pry
# 0000
