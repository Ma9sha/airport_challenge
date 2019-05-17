require 'airport'
require 'plane'

describe Airport do
  describe 'land a plane at an airport' do
    it {
    #arrange
    airport = Airport.new
    plane = Plane.new
    airport.land_plane(plane)
    #assert
    expect(airport.store.length).to eq(1)
    }
  end
end