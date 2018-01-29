class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  def self.create
    song = self.new
    song.name = name
    @@all << song
    song
  end
  def self.new_by_name
    song = self.new.name(name)
  end
  def save
    self.class.all << self
  end
end
