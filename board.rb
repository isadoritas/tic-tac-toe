class Board
  def initialize
    @board = Array.new(9, ' ')
    @current_player = 'X'
  end

  def draw_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts '---+---+---'
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts '---+---+---'
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  
  def play
      puts "\nPlayer #{@current_player} choose a position from 0 to 8:"
      position = gets.chomp.to_i
      if @board[position] == " "
      @board[position] = @current_player
        draw_board
        winner = check_winner
        if winner
          puts "\nPlayer #{winner} wins!"
          return
        end  
      @current_player = @current_player == 'X' ? 'O' : 'X'
      play
    else
      puts "\nPosition already chosen. Choose another one."
      play
    end
  end

  def check_winner 
    if @board[0] == @board[1] && @board[1] == @board[2] && @board[0] != " "
    return @board[0]
    elsif @board[3] == @board[4] && @board[4] == @board[5] && @board[3] != " "
    return @board[3]
    elsif @board[6] == @board[7] && @board[7] == @board[8] && @board[6] != " "
    return @board[6]
    elsif @board[0] == @board[3] && @board[3] == @board[6] && @board[0] != " "
    return @board[0]
    elsif @board[1] == @board[4] && @board[4] == @board[7] && @board[1] != " "
    return @board[1]
    elsif @board[2] == @board[5] && @board[5] == @board[8] && @board[2] != " "
    return @board[2]
    elsif @board[0] == @board[4] && @board[4] == @board[8] && @board[0] != " "
    return @board[0]
    elsif @board[2] == @board[4] && @board[4] == @board[6] && @board[2] != " "
    return @board[2]
    else
    return false
    end
  end


end
    
