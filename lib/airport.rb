class Airport

  attr_reader :aeroplanes
  def initialize
    @aeroplanes = []
  end

  def allow_landing(aeroplane)
   @aeroplanes << aeroplane
  end

  def allow_take_off(aeroplane)
    @aeroplanes.delete(aeroplane)
  end

  def plane_present?(aeroplane)
    aeroplanes.include?(aeroplane)
  end

end
