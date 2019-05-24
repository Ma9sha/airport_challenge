require_relative 'weather'

class Airport
  
  attr_reader :store
  DEFAULT_CAPACITY = 3
  def initialize(capacity = DEFAULT_CAPACITY)
    
    @store = []
    @capacity = capacity
    
  end
  def land_plane(plane, w = Weather.new)
    if w.mood == "sunny"   
    @store.push(plane)
    end
 
end

  def takeoff(w = Weather.new)
    if
      # define weather as sunny and pop your plane. else, nothing
      w.mood == "sunny"
      @store.pop
      return "Plane is no longer in the airport"
    end
  end

  def store_full?
    if @store.length <= DEFAULT_CAPACITY
      return "cannot land any more planes"
    end
   
  end

end