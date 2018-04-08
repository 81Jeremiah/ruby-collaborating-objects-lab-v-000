require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
  @path = file_path
  end
 #binding.pry
  def files
  @files = Dir.entries(@path)
  end

end
