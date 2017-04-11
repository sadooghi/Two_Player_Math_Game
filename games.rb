require 'active_support/all'

class Games

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_end()
    if @player1.life == 0 or @player2.life == 0
      puts "Game Over"
      if @player2.life == 0
        puts "Player1 wins with score of #{@player1.life}"
      elsif @player1.life == 0
        puts "Player2 wins with score of #{@player2.life}"
      end
      return true
    end
    false
  end

  def game_instruction
    @instruction = "Each player has 3 lives and loose a life per wrong answer. The game continues till first player loose all their lives"
  end

end