require 'airport'

describe Airport do

  let(:aeroplane1) { double(:aeroplane) }

  it 'allows an aeroplane to land' do
    subject.land(aeroplane1)
    expect(subject.aeroplanes).to include(aeroplane1)
  end
end
