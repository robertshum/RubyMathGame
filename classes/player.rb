# frozen_string_literal: true

# playe info
class Player
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def who_am_i
    puts "I am #{name}"
  end
end
