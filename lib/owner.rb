class Owner
  @@all = []

  def initialize
    self.all << self
  end

  def self.all
    @@all
  end

end
