class Rules

  def self.display
    puts "------------------------------------------------------------------------------"
    puts "|                     Bienvenue sur le 'TIC-TAC-TOE' !                       |"
    puts "|           Le nouveau jeu qui déchire dans les cours de récré               |"
    puts "------------------------------------------------------------------------------"

    puts "\n######################### !! Règles du jeu !! ################################".green

    puts "\nChoix des cases : garde en tête que le tableau a les dimensions suivantes :".green
    puts "\n"

    example
    
    puts "\n######################### !! Bonne partie !! #################################".green
    puts "\n"
  end

  def self.example
    puts "                             #{"╔═══╦═══╦═══╗".green}\n"
    puts "                             #{"║ 1 ║ 2 ║ 3 ║".green}\n"
    puts "                             #{"╠═══╬═══╬═══╣".green}\n"
    puts "                             #{"║ 4 ║ 5 ║ 6 ║".green}\n"
    puts "                             #{"╠═══╬═══╬═══╣".green}\n"
    puts "                             #{"║ 7 ║ 8 ║ 9 ║".green}\n"
    puts "                             #{"╚═══╩═══╩═══╝".green}\n" 
  end
end