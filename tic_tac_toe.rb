def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def check_win(role, a)
  p = a.each_index.select{|i| a[i] == role}
  result = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].include?(p)
  return result
end
    
  
  
  

puts "Welcome to Tic Tac Toe!"
puts "Below is the index of each postion on the board"

puts ""

puts " 0 | 1 | 2 "
puts "-----------"
puts " 3 | 4 | 5 "
puts "-----------"
puts " 6 | 7 | 8 "

puts ""

A = %w(0 1 2 3 4 5 6 7 8)
a = Array.new(9, " ")
j = 1

loop do
  if j % 2 != 0
    r = check_win("x", a)
    if r == true
      puts "x wins the game!"
      break
    else
      puts "Where would you like to go? (Please type in the index of the position.)"
      p = gets
      puts p
      p = p[0].to_i
      loop do
        break if a[p] == " "
        puts a[p] + " has already took this place. Please type in a different index of the position."
        p = gets
        p = p[0].to_i
      end
      a[p] = 'o'
      display_board(a)
    end
      if j == 9
        puts "Draw!"
      end
      break if j == 9
      j = j + 1
  else
    puts "test"
    r = check_win("o", a)
    if r == true
      puts "o wins the game!"
      break
    else
      puts "It's time for the other to go!"
      p = gets
      p = p[0].to_i
      loop do
        break if a[p] == " "
        puts a[p] + " has already took this place. Please type in a different index of the position."
        p = gets
        p = p[0].to_i
      end
      a[p] = 'x'
      display_board(a)
      j = j + 1
    end
  end
end
