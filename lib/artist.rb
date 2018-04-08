require 'pry'

class Artist
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end
  def print_songs
    @songs.each do |song| song.name
    puts "#{song.name}"
    end
  end
  def add_song(song)
    @songs << song
    song.artist = self
    end

  def self.find_or_create_by_name(name)
    if @@all.any?{|artist| artist.name == name}
      name
    #@@all.detect{|artist| artist.name == name}
    #binding.pry
    else
    name = self.new(name)
    #binding.pry
    name
    #binding.pry
    end
  end

  def save
    @@all << self
  end

 def self.all
   @@all
 end

end
