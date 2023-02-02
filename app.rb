require 'bundler'
Bundler.require

require_relative 'lib/app/board_game'
require_relative 'lib/app/box'
require_relative 'lib/app/player'
require_relative 'lib/app/game'
require_relative 'lib/views/rules'

Rules.display
game = Game.new

while game.is_still_ongoing? == true
  game.array_player.each do |player|
    game.menu(player)
      if game.is_still_ongoing? == "winner"
        BoardGame.show_board(game.board.array_board)
        sleep 1
        puts ("Fin de la partie ! Bravo #{player.name} tu remportes la partie !").green
        break
      elsif game.is_still_ongoing? == "draw"
        BoardGame.show_board(game.board.array_board)
        sleep 1
        puts "Pas de vainqueurs ! On y retourne ? Entre 'Y' pour relancer une partie"
        if gets.chomp == "Y"
          system('ruby app.rb')
        else
          break
        end
      end
    BoardGame.show_board(game.board.array_board)
  end
end