class MP3Importer
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    dir.entries(path).select{|entry| entry.include?(".mp3")}
  end
end
