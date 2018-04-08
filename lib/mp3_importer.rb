class MP3Importer
  attr_accessor :song

  def initialize(file)
  @file = file.chomp(.mp3)
  end

end
