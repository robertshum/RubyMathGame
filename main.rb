# frozen_string_literal: true

require './classes/game'
require './classes/player'

puts 'Initializing the grand 1v1 Math Game!'

game = Game.new
game.start_game
