class BoardGame
  attr_accessor :array_board, :array_available_boxes
  
  def initialize
    @array_board = Array.new(9, " ")  
    @array_available_boxes = [*1..9]
  end

  def self.show_board(array_board)
    puts "Voici l'état de la partie : \n\n"
    array_display = array_board
    array_display = [Box.fill_box(array_board[0],1), Box.fill_box(array_board[1],2), Box.fill_box(array_board[2],3), Box.fill_box(array_board[3],1), Box.fill_box(array_board[4],2), Box.fill_box(array_board[5],3), Box.fill_box(array_board[6],1), Box.fill_box(array_board[7],2), Box.fill_box(array_board[8],3)]  
    Box.display_top
    for i in 0..2
      print array_display[i]
    end
    Box.display_interlayer
    for i in 3..5
      print array_display[i]
    end
    Box.display_interlayer
    for i in 6..8
      print array_display[i]
    end
    Box.display_bottom
  end
end
