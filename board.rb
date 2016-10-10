class Board
  BOARD_MAX_INDEX = 2
  EMPTY_POS = " "
  #constructor
  def initialize(current_player)
    @current_player = current_player
    @board =[[EMPTY_POS,EMPTY_POS,EMPTY_POS],[EMPTY_POS,EMPTY_POS,EMPTY_POS],[EMPTY_POS,EMPTY_POS,EMPTY_POS]]
  end

  def display
    puts "+- - - - - - -+"
    for row in 0..BOARD_MAX_INDEX
      print '|'
      for col in 0..BOARD_MAX_INDEX
        s = @board[row][col]
        if s == EMPTY_POS
          print col + row * 3 + 1
        else
          print s
        end
        print "|"
      end
      puts "\n+- - - - - -+"
    end
  end
  #check board fullness
  def board_full
    for row in 0..BOARD_MAX_INDEX
      for col in 0..BOARD_MAX_INDEX
        return false if @board[row][col] == EMPTY_POS
      end
    end
    true
  end

  def winner
    winner = winner_rows || winner_cols || winner_diagonals
    winner if winner
    return
  end

  def winner_rows
    for row_index in 0..BOARD_MAX_INDEX
      first_symbol = @board[row_index][0]
      for col_index in 1..BOARD_MAX_INDEX
        if first_symbol != @board[row_index][col_index]
          break
        elsif col_index == BOARD_MAX_INDEX && first_symbol != EMPTY_POS
          return first_symbol
        end
      end
    end
    return
  end

  def winner_cols
    for col_index in 0..BOARD_MAX_INDEX
      first_symbol = @board[0][col_index]
      for row_index in 1..BOARD_MAX_INDEX
        if first_symbol != @board[row_index][col_index]
          break
        elsif row_index == BOARD_MAX_INDEX && first_symbol != EMPTY_POS
          return first_symbol
        end
      end
    end
    return
  end

  def winner_diagonals
     first_symbol = @board[0][0]
     for index in 1..BOARD_MAX_INDEX
      if first_symbol != @board[index][index]
       break
      elsif index == BOARD_MAX_INDEX and first_symbol != EMPTY_POS
        return first_symbol
      end
     end
     first_symbol = @board[0][BOARD_MAX_INDEX]
     row_index = 0
     col_index = BOARD_MAX_INDEX
     while row_index < BOARD_MAX_INDEX
       row_index = row_index + 1
       col_index = col_index - 1
       if first_symbol != @board[row_index][col_index]
         break
       elsif row_index == BOARD_MAX_INDEX and first_symbol != EMPTY_POS
         return first_symbol
       end
     end
     return
  end

  def ask_player_for_move(current_player)
    played = false
    until played
      puts "Player" + current_player + " :Where would you like to play?"
      move = gets.to_i - 1
      col = move % @board.size
      row = (move - col) / @board.size
      if validate_position row,col
        @board[row][col] = current_player
        played = true
      end
    end
  end

  def validate_position row,col
    if row <= @board.size && col <= @board.size
      if @board[row][col] = EMPTY_POS
        return true

      else
        puts "That position is occupied."
      end
    else
      puts "Invalid position."
    end
    return false
  end

  def get_next_turn
    if @current_player == "X"
      @current_player = 'O'
    else
      @current_player = 'X'
    end
    return @current_player
  end

end
