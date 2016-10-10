class Turn

  def initialize (player,board)
    @name = player.name
    @mark = player.mark
    @board = board
  end

  def make_turn

  end

  def anounce
    puts "#{@name}, it's your turn."
  end
end
