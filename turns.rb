require 'active_support/all'

class Turn

  def initialize(p1, p2)
    @players = [p1, p2]
    @turn = 0
  end

  def change_turn
    @turn += 1
    if @turn >= @players.length
      @turn = 0
    end

    puts "The turn has changed"
    puts "Turn is currently player #{@turn + 1}'s turn"
  end

  def current_player
    @players[@turn]
  end

end