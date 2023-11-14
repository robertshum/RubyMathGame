# frozen_string_literal: false

# game logic
class Game
  def initialize
    @correct_answer = -1
    @winner = nil
  end

  attr_accessor :correct_answer, :winner

  def start_game

    # init players
    player1 = Player.new('Player 1')
    player2 = Player.new('Player 2')
    current_player = player1;

    # game logic
    loop do
      # ask question
      puts "#{current_player.name}: #{make_random_question}"
      input = gets.chomp

      if(input.to_i != self.correct_answer)
        current_player.lose_life
        puts "#{current_player.name}: Seriously? No!"
      else
        puts "#{current_player.name}: YES!  You are correct."
      end

      # print stats
      puts "#{player1.name}: #{player1.life}/3 vs. #{player2.name}: #{player2.life}/3"

      # check if there is a winner
      self.winner = return_winner(player1, player2)

      break unless winner.nil?

      current_player = current_player == player1 ? player2 : player1
      puts "-- NEW TURN --"
      # end player loop
    end

    # winner
    puts "-- GAME OVER --"
    puts "#{winner.name} wins with a score of: #{winner.life}/3"
  end

  # return nill if no winner, otherwise p1 or p2
  def return_winner(player1, player2)
    return player2 if player1.life.zero?
    return player1 if player2.life.zero?

    nil
  end

  # get a random qeustion
  # set correct answer too
  def make_random_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    self.correct_answer = num1 + num2
    "What does #{num1} plus #{num2} equal?"
  end
end
