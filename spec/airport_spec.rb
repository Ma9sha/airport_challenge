require 'airport'
require 'plane'

describe Airport do
  describe 'land a plane at an airport' do
    it {
    #arrange
    airport = Airport.new
    plane = Plane.new
   
    #assert
    expect(airport).to respond_to(:land_plane)
    }
  end
end