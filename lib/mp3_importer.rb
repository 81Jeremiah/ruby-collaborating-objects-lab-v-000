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
    #self.files.grep(/\.mp3$/)
    #self.files.each{ |file| Artist.find_or_create_by_name(file) }
    #binding.pry
    #Artist.save
  end
end
