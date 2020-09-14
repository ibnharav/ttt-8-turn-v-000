# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  if 
    position <0 || position >8
    false
  elsif position_taken?(board, position) == false
    true
  elsif
    position_taken?(board, position) == true
    false
  else
    false
  end
  
end  

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
if board[position] == " " || board[position] == "" || board[position] == nil
   false
  elsif board[position] == "X" || board[position] == "O" 
    true
else
   true
end  
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  user_input  = 0
  puts "Please enter 1-9:"

  while user_input < 1 || user_input > 9
    user_input = gets.strip.to_i
  end
    valid_move(board,user_input - 1)
    
end