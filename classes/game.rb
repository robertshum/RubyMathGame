# frozen_string_literal: true

# game logic
class Game
  def initialize; end

  def start_game
    player1 = Player.new('Player 1')
    player1.who_am_i

    player2 = Player.new('Player 2')
    player2.who_am_i
  end
end
