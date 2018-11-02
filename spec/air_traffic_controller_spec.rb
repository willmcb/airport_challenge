require 'air_traffic_controller'

describe AirTrafficController do
  let(:airport1) { double(:airport) }
  let(:airport2) { double(:airport) }
  let(:airport3) { double(:airport) }
  let(:aeroplane1) { double(:aeroplane) }
  let(:weather) { double(:weather) }

  before :each do
    allow(aeroplane1).to receive(:flight_code).and_return("EZY7401")
    allow(airport1).to receive(:take_off).and_return("EZY7401")
  end
  it 'can instruct a plane to land at an airport' do
    expect(subject).to respond_to(:ask_plane_to_land)
  end

  it 'can instuct a plane to take off from and airport' do
   expect(subject).to respond_to(:ask_plane_to_take_off)
  end

  it 'will not let a plane take off if weather is stormy' do
    allow(weather).to receive(:stormy?).and_return(true)
    expect(subject.ask_plane_to_take_off(aeroplane1, airport1, weather)).to eq("Plane cannot take off as weather is stormy!")
  end

  it 'will not let a plane land if weather is stormy' do
    allow(weather).to receive(:stormy?).and_return(true)
    expect(subject.ask_plane_to_land(aeroplane1, airport1, weather)).to eq("Plane cannot land as weather is stormy!")
  end

  it 'can confirm that a plain is not at a given airport' do
   expect(subject).to respond_to(:confirm_plane_has_taken_off)
  end
end
