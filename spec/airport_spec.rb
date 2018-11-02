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

  it 'has a default capacity of 20 aeroplanes' do
    expect(subject.capacity).to eq(20)
  end

  it 'has a default capacity that can be overridden' do
    random_capacity =(rand(40) + 1)
    expect(Airport.new(random_capacity).capacity).to eq(random_capacity)
  end
end
