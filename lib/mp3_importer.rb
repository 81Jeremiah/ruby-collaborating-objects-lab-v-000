bindin

class MP3Importer
  attr_accessor :path

  def initialize(file_path)
  @path = file_path
  end

  def files
  @files = @path.Dir
  end

end
