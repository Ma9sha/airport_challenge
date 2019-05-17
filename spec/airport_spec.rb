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
  describe 'plane to takeoff from the airport' do
    it {
      plane = Plane.new
      airport = Airport.new
      airport.land_plane(plane)
      airport.takeoff
      #assert
      expect(airport.store.length).to eq(0)
    }
  end

  describe 'confirm the plane is no longer in the airport' do
    it {
      plane = Plane.new
      airport = Airport.new
      airport.land_plane(plane)
      airport.takeoff
      expect(airport.takeoff).to eq("Plane is no longer in the airport")
    }
  end
  end