# frozen_string_literal: true

# game logic
class Game
  def initialize
    @correct_answer = -1
  end

  attr_accessor :correct_answer

  def start_game
    # player1 = Player.new('Player 1')
    # player1.who_am_i

    # player2 = Player.new('Player 2')
    # player2.who_am_i

    question = make_random_question
    puts "Player1 : #{question}"
    puts correct_answer
  end

  def make_random_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    self.correct_answer = num1 + num2
    "What does #{num1} plus #{num2} equal?"
  end
end
