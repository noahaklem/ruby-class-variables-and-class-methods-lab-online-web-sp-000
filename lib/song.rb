require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@artists << @artist
    @@genres << @genre
    
    @@count += 1
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres
   @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @count = {}
    counter = 1
    
    @@genres.each do |key|
      if @count.has_key?(key)
        counter += 1 
        @count[key] << counter
      else
        @count[key] = []
        @count[key] = counter
      end
      
     # @hash_count[key] << [@@genres.count(value)]
     # puts @@genres.count(key)
      
    end
        
  end
  
 binding.pry

  
end
