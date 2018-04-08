class Song
  attr_accessor :name, :artist

  def initialize(name)
  @name = name
  end

  def self.new_by_filename(file_name)
    file_split = file_name.split(" - ")
    name = self.new(file_split[1])
    artist = artist.new(file_split[0])
  end
end
