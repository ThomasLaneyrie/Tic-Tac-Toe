class Box
  attr_accessor :array_boxes
  
  def self.fill_box(choix, col)    # A améliorer plus tard potentiellement mettre une valeur o,x ou " " 
    case choix                     # ou mieux que ma donnée d'entrée de choix soit déjà "o", "x" ou " " comme ça pas besoin de créer une variable intermédiaire
    when " "
      if col == 1
        "║   ║"
      elsif col == 2 
        "   ║"
      else 
        "   ║\n" 
      end   
    when "○"
      if col == 1
        "║ ○ ║"
      elsif col == 2
        " ○ ║"
      else 
        " ○ ║\n"  
      end
    when "X"
      if col == 1 
        "║ X ║"
      elsif col == 2
        " X ║"
      else
        " X ║\n"  
      end
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