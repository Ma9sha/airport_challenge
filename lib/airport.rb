

class Airport

  attr_reader :store
  def initialize
    @store = []
  end
  def land_plane(plane)
    @store.push(plane)
  end
  def takeoff
    @store.pop
    #if 
      #@store == 0
    return "Plane is no longer in the airport"
   
  
  end
end