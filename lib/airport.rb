

class Airport

  attr_reader :store
  def initialize
    @store = []
  end
  def land_plane(plane)
    @store.push(plane)
  end
end