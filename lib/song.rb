class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    
    @@count +=1 
    @@genres << genre
    
    
    @@artists << artist
    
  end 
  
  def self.count 
    @@count
  end 

  def self.genres 
    @@genres = @@genres.uniq
  end 

  def self.artists
    @@artists=@@artists.uniq
    @@artists
  end 
  
  def inject(array, init)
    obj = init
    array.each do |el|
      obj = yield(obj, el)
    end 
    obj
  end
  
  def self.genre_count
    genre_count = Hash.new(0)
    @@genres.each do |genre|
        genre_count[genre] += 1 
    end
    genre_count
  end
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end


end 
