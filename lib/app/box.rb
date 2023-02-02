class Box
  
  def self.fill_box(choix, col)
    if col == 1
      "║ #{choix} ║"            
    elsif col == 2 
      " #{choix} ║"
    else 
      " #{choix} ║\n" 
    end
  end

  def self.display_interlayer
    puts "╠═══╬═══╬═══╣\n"
  end
  
  def self.display_top
    puts "╔═══╦═══╦═══╗\n"
  end 
  
  def self.display_bottom
    puts "╚═══╩═══╩═══╝\n"  
  end

end