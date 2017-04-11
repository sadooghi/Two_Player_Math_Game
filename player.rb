require 'active_support/all'

class Player

  attr_reader :life

  def initialize(p_name)
    @name = p_name
    @life = 3
  end

  def decrement_life()
    @life -= 1
  end

end

