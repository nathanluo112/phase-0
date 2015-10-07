# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer
  def initialize(board)
    @board = board;
  end

  def check_row?(row_j)
    if @board[row_j]==['x','x','x','x','x']
      return true
    else
      return false
    end
  end

  def check_column?(column_i)
    @board.each do |row|
      if row[column_i]!='x'
        return false
      end
    end
    return true;
  end

  def check_diagonal?
    result = true
    (0..4).each{ |idx| result = false if @board[idx][idx]!='x'}
    return result if result
    result = true
    (0..4).each { |idx| result = false if @board[idx][4-idx]!='x'}
    return result
  end


  def bingo?
    return true if check_diagonal?
    @board.each do |row|
      row.each do |item|
        if item == 'x'
          i = row.index(item)
          j = @board.index(row)
          return true if check_column?(i) || check_row?(j)
        end
      end
    end
    return false;
  end


  def printboard
    @board.each do |row|
      print row
      print "\n"
    end
  end

end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

b = BingoScorer.new(horizontal)
a = BingoScorer.new(vertical)
ltr = BingoScorer.new(left_to_right)
rtl = BingoScorer.new(right_to_left)

b.printboard
puts(b.bingo?)
a.printboard
puts(a.bingo?)
ltr.printboard
puts(ltr.bingo?)
rtl.printboard
puts(rtl.bingo?)



# Reflection

# What concepts did you review or learn in this challenge?
# I reviewed the concept of iterating through nested array. Since the array is two dimentional, we need 2 nested iteration to go through each element of the array.

# What is still confusing to you about Ruby?
# So far most of the concepts we study are quite clear.

# What are you going to study to get more prepared for Phase 1?
# I will go through blocks and lambda more since JavaScript has the syntax of storing a function in a variable. I feel they are very similar and eventually might have some connection.