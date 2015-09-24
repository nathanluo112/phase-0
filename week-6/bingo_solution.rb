# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # 1. create an array with letters b, i, n, g, o in it, then pick a random element from it and push to the result array
  # 2. Generate a random number from 1-100, convert to string and push to the result array
  # 3. Return the result array.

# Check the called column for the number called.
  # Use map! as the iterator to change the content

# If the number is in the column, replace with an 'x'
  # Use another map to change the value in the row

# Display a column to the console
  #

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @translation = {
#     'b' => 0,
#     'i' => 1,
#     'n' => 2,
#     'g' => 3,
#     'o' => 4
#   }
#     @array = Array.new(2)
#   end

#   def call
#     bingo = ['b','i','n','g','o']
#     @array[0] = bingo.sample
#     @array[1] = rand(99)+1
#     print @array
#     puts
#   end

#   def check
#     col_idx = @translation[@array[0]]
#     @bingo_board.map! do |row|
#       if row[col_idx] == @array[1]
#         row = row.map {|e| e == @array[1] ? "x" : e}
#       else
#         row = row
#       end
#     end
#     @bingo_board.each {|row| }
#     print_column(@array[0])
#   end

#   def print_column(letter)
#     puts "Printing column #{letter.upcase} ..."
#     @bingo_board.each { |row| puts row[@translation[letter]]}
#     puts
#   end

#   def print_board
#     puts "Printing Bingo Board"
#     @bingo_board.each do |row|
#       print row
#       puts
#     end
#   end
# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @translation = {
    'b' => 0,
    'i' => 1,
    'n' => 2,
    'g' => 3,
    'o' => 4
  }
    @array = Array.new(2)
  end

  def call
    bingo = ['b','i','n','g','o']
    @array[0] = bingo.sample
    @array[1] = rand(99)+1
    puts "Call ... "
    print @array
    puts
  end

  def check
    col_idx = @translation[@array[0]]
    column = []
    @bingo_board.each { |row| column << row[col_idx]}
    row_idx = column.index(@array[1])
    if not row_idx.nil?
      @bingo_board[row_idx][col_idx] = 'x'
    end
  end


  def print_column(letter)
    puts "Printing column #{letter.upcase} ..."
    @bingo_board.each { |row| puts row[@translation[letter]]}
    puts
  end

  def print_board
    puts "Printing Bingo Board"
    @bingo_board.each do |row|
      print row
      puts
    end
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

puts "Type 'q' + Enter to exit program \n"
while true
  new_game.call
  new_game.check
  new_game.print_board
  break if gets.chomp == 'q'
end

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# The pseudo code is very difficult to write and direct the translation. If when getting into more detailed steps, it is inevitably touch the built-in function of the language, which is not recommanded.
# It feels like writing the pseudocode just for the sake of it instead of needing it for guideline.

# What are the benefits of using a class for this challenge?
# So we can distinguish the object and the behaviors from other kinds of object. It is easier to maintain or modify.

# How can you access coordinates in a nested array?
# First access the outter array, then access the inner array by index.
# So it would be array[outter_index][inner_index].

# What methods did you use to access and modify the array?
# I access and modify the array by direct access through index. I tried using map but it become very complicated.

# How did you determine what should be an instance variable versus a local variable?
# Instance variable need to be used and reflect changes throughout the life span of the instance. Local variable can be discarded once the behavior is completed.

# What do you feel is most improved in your refactored solution?
# I change the array modification from map! to direct index accessing. It simplify the logic by a lot since the behavior of the map is not very suited in this scenario.
