require 'pry'
require './games'
require './player'
require './questions'
require './turns'

p1 = Player.new("player1")
p2 = Player.new("player2")
turn = Turn.new(p1, p2)
game = Games.new(p1, p2)

while !game.game_end
  question = Questions.new
  question.ask
  player_answer = gets.chomp
  question.check_answer(player_answer, turn.current_player)
  turn.change_turn
end


