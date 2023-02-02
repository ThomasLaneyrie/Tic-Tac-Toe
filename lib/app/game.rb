class Game
  attr_accessor :array_player, :board, :array_available_boxes

  def initialize()
    @board= BoardGame.new

    # Création des 2 joueurs avec choix de leur nom
    puts "Quel est ton nom, joueur 1 ?"
    player1 = Player.new(gets.chomp,"")    
    puts "\nQuel est ton nom, joueur 2 ?"
    player2 = Player.new(gets.chomp,"")    

    # Qui commence à jouer
    puts "\nQui débute ? Lancez le dé pour le savoir"
    puts "-> 1, 2 ou 3, et c'est #{player1.name} qui démarre"
    puts "-> 4, 5 ou 6, et c'est #{player2.name} !"
    puts "Appuies sur une touche pour lancer le dé"
    gets.chomp
    de = dice
      if de == 1 || de == 2 || de == 3
        first_player = player1
        second_player = player2
      else 
        first_player = player2
        second_player = player1
      end
    puts "#{de} ! C'est #{first_player.name} qui démarre"
    sleep 2

    # Choix de son équipe (ronds ou croix)
    puts "\n#{first_player.name}, t'es plutôt croix ou ronds ??"
    puts "> croix"
    puts "> ronds"
    choice = gets.chomp                               
    while choice != "ronds" && choice != "croix"
      choice = gets.chomp
    end
    first_player.team = Player.choose_team_joueur1(choice)
    second_player.team = Player.choose_team_joueur2(choice)
    @array_player = [first_player, second_player]
    sleep 1
    puts "\nOK #{first_player.name}, à toi les #{first_player.team} !"
    sleep 1
    puts "Et toi mon ami #{second_player.name}, ce sera les #{second_player.team} (Entre nous...ce sont les meilleurs ;))"
    sleep 1
  end

  def menu(player)
    puts "\nQuelle case veux-tu jouer #{player.name} ?\nCases disponibles :"
    board.array_available_boxes.each do |available_box|
      print "#{available_box} "
    end
    puts "\nTape le numéro correspondant à la case pour la jouer\n"
    
    choice = 0
    while board.array_available_boxes.include?(choice) == false
      print "> " 
      choice = gets.chomp.to_i
      if board.array_available_boxes.include?(choice) == true
        break
      end
      puts "Choix impossible ! Choisi à nouveau"
    end
    board.array_available_boxes.delete(choice)
    board.array_board[choice-1] = player.team
  end

  def dice
    return rand(1..6)
  end
  
  def is_still_ongoing?
    if winning_condition(0,1,2) == true || winning_condition(3,4,5) == true || winning_condition(6,7,8) == true || winning_condition(0,3,6) == true || winning_condition(1,4,7) == true || winning_condition(2,5,8) == true || winning_condition(0,4,8) == true || winning_condition(2,4,6) == true
      return "winner"
    elsif @board.array_available_boxes.length == 0
      return "draw"
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