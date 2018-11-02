require 'airport'

describe Airport do

  let(:aeroplane1) { double(:aeroplane) }
  let(:aeroplane2) { double(:aeroplane) }

  it 'allows an aeroplane to land' do
    subject.allow_landing(aeroplane1)
    expect(subject.aeroplanes).to include(aeroplane1)
  end

  it 'allows a plane to take off' do
    subject.allow_landing(aeroplane1)
    expect(subject.allow_take_off(aeroplane1)).to eq(aeroplane1)
    expect(subject.aeroplanes).not_to include(aeroplane1)
  end

  it 'can say if plane is present or not' do
    subject.allow_landing(aeroplane2)
    expect(subject.plane_present?(aeroplane2)).to eq(true)
    expect(subject.plane_present?(aeroplane1)).to eq(false)
  end
end
