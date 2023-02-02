class Game
  attr_accessor :array_player, :board, :array_available_boxes

  def initialize()
    @board= BoardGame.new

    puts "Quel est ton nom, joueur 1 ?"
    player1 = Player.new("Killer78","")     #Remettre gets.chomp
    puts "Quel est ton nom, joueur 2 ?"
    player2 = Player.new("Victime83","")     #Remettre gets.chomp

    puts "#{player1.name}, t'es plutôt croix ou ronds ??"
    puts "> croix"
    puts "> ronds"
    choice = "croix"                               #Remettre gets.chomp
    while choice != "ronds" && choice != "croix"
      choice = gets.chomp
    end
    player1.team = Player.choose_team_joueur1(choice)             
    player2.team = Player.choose_team_joueur2(choice)
    @array_player = [player1, player2]

    puts "OK #{player1.name}, à toi les #{player1.team.red} !"
    puts "Et toi mon ami #{player2.name}, ce sera les #{player2.team.green} (Entre nous...ce sont les meilleurs ;))"
  end

    def menu(player)
        puts "Quelle case veux-tu jouer #{player.name} ?"
          board.array_available_boxes.each do |available_box|
            puts "Case #{available_box} disponible. Pour la jouer tape #{available_box}"
          end
        choice = gets.chomp.to_i
        board.array_available_boxes.delete(choice)
        board.array_board[choice-1] = player.team
  end

  def is_still_ongoing?
    # if @board.array_board[0] != " " && @board.array_board[0] == @board.array_board[3] && @board.array_board[0] == @board.array_board[6]
    #   return false
    if winning_condition(0,1,2) == true || winning_condition(3,4,5) == true || winning_condition(6,7,8) == true || winning_condition(0,3,6) == true || winning_condition(1,4,7) == true || winning_condition(2,5,8) == true || winning_condition(0,4,8) == true || winning_condition(2,4,6) == true
      return false
    elsif @board.array_available_boxes.length == 0
      return false
    else
      return true
    end
  end

  def winning_condition(number1, number2, number3)
    if @board.array_board[number1] != " " && @board.array_board[number1] == @board.array_board[number2] && @board.array_board[number1] == @board.array_board[number3]
      return true
    end
  end
end