class Airport

  attr_reader :aeroplanes
  def initialize
    @aeroplanes = []
  end

  def land(aeroplane)
   @aeroplanes << aeroplane
  end

end
