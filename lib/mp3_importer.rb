require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
  @path = file_path
  end
 #binding.pry
  def files
  @files = Dir.entries(@path)
  @files.grep(/\.mp3$/)
  #@files.select{ |file| file.include?(".mp3")}
  end

  def import
    self.files.each do |file|
    song = Song.new_by_filename(file)
    Artist.all << song.artist unless Artist.all.include?(song.artist)
  #binding.pry
    end
    #binding.pry
    #Artist.save
  end
end
