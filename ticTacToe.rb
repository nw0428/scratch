require './board.rb'

turn = 0
puts "Welcome to tic tac toe"
board = TicTacToe::Board.new
until (winner = board.winner?) || (turn == 9) do
  player = "X"
  player = "O" if turn % 2 != 0
  puts "Player #{player}'s turn. Where would you like to play (1-9)"
  board.print
  until board.play(player, gets.chomp.to_i)
    puts "Try again"
  end
  turn += 1
end

if winner
  puts "Player #{winner} wins"
else
  puts "Tie game"
end
