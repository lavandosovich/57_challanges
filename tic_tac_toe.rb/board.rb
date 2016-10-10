class Board
  attr_accessor :board

  def initialize(player)
    @player = player
    @board = [[1,2,3],[4,5,6],[7,8,9]]
  end

  def display
    board.each do |x|
      x.each do |y|
        print "|#{y}"
      end
      print "|"
      puts
    end
  end

end
