module TicTacToe
  class Board
    attr_accessor :board
    def initialize
      @board = []
      @board << [1, 2, 3]
      @board << [4, 5, 6]
      @board << [7, 8, 9]
      @lines = '-----'
    end

    def print
      @board.each do |row|
        puts row.join("|")
        puts @lines
      end
    end

    def play(player, position)
      accross = (position - 1) % 3
      down = (position - 1) / 3
      if @board[down][accross].is_a? Numeric
        @board[down][accross] = player
        return true
      else
        puts 'Illegal play spot is already taken'
        return false
      end
    end

    def winner?
      @board.each do |row|
        return row[0] if row[0] == row[1] && row[1] == row[2]
      end
      (0..2).each do |column|
        return @board[0][column] if @board[0][column] == @board[1][column] && @board[1][column] == @board[2][column]
      end
      return @board[0][0] if @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      return @board[0][2] if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      nil
    end
  end
end
