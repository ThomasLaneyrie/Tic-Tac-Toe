require 'bundler'
Bundler.require

require_relative 'lib/board_game'
require_relative 'lib/box'
require_relative 'lib/cross'
require_relative 'lib/round'
require_relative 'lib/player'
require_relative 'lib/game'

# Début vrai app
game = Game.new

# BoardGame.show_board(game.board.array_board)
# game.menu(game.array_player[0])
# puts game.is_still_ongoing?
while game.is_still_ongoing? == true
  game.array_player.each do |player|
    game.menu(player)
      if game.is_still_ongoing? == false
        BoardGame.show_board(game.board.array_board)
        puts "Fin de la partie ! #{player.name} remporte la partie !"
        binding.pry
        break
      end
    BoardGame.show_board(game.board.array_board)
  end
end

