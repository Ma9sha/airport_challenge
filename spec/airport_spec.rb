require 'airport'
require 'plane'
require 'weather'

describe Airport do

  let (:plane) { Plane.new }
  let (:airport) { Airport.new }
  let (:weather) { double(:weather)}

  describe 'land a plane at an airport' do
    it {
    weather = instance_double("Weather", :mood => "sunny")
    airport.land_plane(plane, weather)
  
    expect(airport.store.length).to eq(1)
    }
    end


    describe 'land a plane at an airport' do
      it {
      weather = instance_double("Weather", :mood => "stormy")
      airport.land_plane(plane, weather)
    
      expect(airport.store.length).to eq(0)
      }
      end
  describe 'plane to takeoff from the airport' do
    it {
      #weather = instance_double("Weather", :mood => "sunny")
      airport.land_plane(plane)
      airport.takeoff
      expect(airport.store.length).to eq(0)
    }
    end

  describe 'confirm the plane is no longer in the airport' do
    it {
      #weather = instance_double("Weather", :mood => "sunny")
      airport.land_plane(plane)
      airport.takeoff
      expect(airport.takeoff).to eq("Plane is no longer in the airport")
    }
    end

  describe "prevent takeoff when weather is stormy" do
    it {
      # testdouble to account for stormy weather
      weather = instance_double("Weather", :mood => "stormy")
      airport.land_plane(plane)
      airport.takeoff(weather)
      expect(airport.store.length).to eq(1)
      }
    end

    describe "Dont land a plane if the store is full" do
      it {
        airport.land_plane(plane)
        expect(airport.store_full?).to eq("cannot land any more planes")
      }
    end
  end