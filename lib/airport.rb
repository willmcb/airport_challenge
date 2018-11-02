class Airport

  attr_reader :aeroplanes
  attr_reader :capacity

  def initialize(capacity = 20)
    @aeroplanes = []
    @capacity = capacity
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

  def full?
   @aeroplanes.size <= @capacity
  end

end
