
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #create array for b-i-n-g-o
  #pick index position at random
  #choose number at random between 1-100
  #assign each to variable

# Check the called column for the number called.
  #fill in the outline here
  # method takes random number and letter
  # use bingo letter to select a column - b/0, i/1, n/2, etc
  # check each array, 0123, etc at specified column (b/0, i/1, n/2, etc) for number inherited


# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # if array[row][column] == number
      #array[row][column] = X

# Display a column to the console
  #fill in the outline here
  def display_column(board, column)
    i = 0
    while i < 5
      puts board[i][column]
      i += 1
    end


# Display the board to the console (prettily)
  #fill in the outline here
  ?

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  def generate_let_num
    bingo_arr = ["B", "I", "N", "G", "O"]
    #would be way easier to make bingo_arr an array of 0-4 and then select a random number that could be used as index number for column
    bingo_letter = bingo_arr.sample
    random_num = rand(1...100)
  end
  def check_column (bingo_letter, random_num, bingo_arr, board)
    i = 0
    #goal of below is to find which index position the chosen BINGO letter is in. As I said above, making the bingo array 0-4 would eliminate this step
    while i < 5
      if bingo_arr[i] == bingo_letter
        bingo_column = i
      end
      i += 1
    end
    #goal of below is to replace number with X
    while i < 5
      if board[i][bingo_column] == random_num
        board[i][bingo_column] = 'X'
      end
      i += 1
    end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection
