 class Instrument
  attr_reader :type

  def initialize(type)
    @type=type
  end

  def broken?
    false
  end

 end
