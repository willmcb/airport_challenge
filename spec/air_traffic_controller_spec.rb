require 'air_traffic_controller'

describe AirTrafficController do
  let(:airport1) { double(:airport) }
  let(:airport2) { double(:airport) }
  let(:airport3) { double(:airport) }
  let(:aeroplane1) { double(:aeroplane) }

  it 'can instruct a plane to land at an airport' do
    expect(subject).to respond_to(:ask_plane_to_land)
  end
end
