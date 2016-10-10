class Game

  def over?

  end

end


class Board
  attr_accessor :stock_board



  def stock_board
    board = [["-","-","-"],
             ["-","-","-"],
             ["-","-","-"]]
  end

  def print_board
    puts "   A  B  C"

    print "1|"
    stock_board[0].each{|x| print "#{x} |"}
    puts

    print "2|"
    stock_board[1].each{|x| print "#{x} |"}
    puts

    print "3|"
    stock_board[2].each{|x| print "#{x} |"}
  end

end


Board.new.print_board
