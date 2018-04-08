require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
  @path = file_path
  end
 #binding.pry
  def files
  @files = Dir.entries(@path)
  @files.select{ |file| file.include?(".mp3")}
  end

end
