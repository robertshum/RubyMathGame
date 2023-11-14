# frozen_string_literal: true

PLAYER_LIVES = 3

# player info
class Player
  def initialize(name)
    @name = name
    @life = PLAYER_LIVES
  end

  attr_reader :name, :life

  def lose_life
    @life = life - 1
  end

  def who_am_i
    puts "I am #{name}"
  end
end
