
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 2 hours on this challenge.


# Release 0: Pseudocode
# Outline:
#Pick bingo letter and number at random
#check board for number in specified column/bingo letter, and replace with 'X' if found
#return updated board

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
#  def display_column(board, column)
 #   i = 0
  #  while i < 5
   #   puts board[i][column]
    #  i += 1
    #end


# Display the board to the console (prettily)
  #fill in the outline here
  #Return updated @bingo_board?


# Refactored solution
#***** I would like to review this code with a guide if possible! Thanks!
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate_let_num
    bingo_arr = ["B", "I", "N", "G", "O"]
    bingo_letter = bingo_arr.sample
    #^Picks random BINGO letter
    random_num = rand(1...100)
    #^picks random number
    #goal of below is to find which index position the chosen BINGO letter is in.
    i = 0
    while i < 5
      if bingo_arr[i] == bingo_letter
        bingo_column = i
      end
      i += 1
    end
    @bingo_column = bingo_column
    @random_num = random_num
    puts bingo_letter
    puts random_num
    bingo_letter
    random_num
  end

  def check_replace
    generate_let_num
    #goal of below is to replace bingo number with X
    column_num = 0
    while column_num < 5
      if @bingo_board[column_num][@bingo_column] == @random_num
        @bingo_board[column_num][@bingo_column] = 'X'
      end
      column_num += 1
    end
  end

  def display_column
    check_replace
    puts @bingo_board.map {|row| row[2]}
  end

  def display_board
    check_replace
    puts @bingo_board
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
#new_game.check_replace
#new_game.display_column
#new_game.display_board

#Reflection
#***** I would like to review this code with a guide if possible! Thanks!

#I did not find this challenge particularly hard to pseudocode. The steps are straightforward. I think my pseudocode is concise, but it gets me where I need to go.
#A class can contain many methods that all act as a single object. I am afraid that although I believe my code to be correct, I do not quite grasp the concept of classes enough to accurately implement this class.
#array[row][column]
#I did not find it necessary to use any preloaded methods on this. I found I could access the necessary numbers using only the array[row][column] notation, and use conditional statements and == to modify the array.
#I did not find it necessary to use the Ruby docs on this challenge.
#To determine whether I needed an instance variable or local variable, I looked at if I would need them in other methods, or just in the current one. If i needed them later, I made instance variables.
#The solution I have above is my refactored solution. I did have an initial solution but made the mistake of overwriting it and not saving a copy. The most difficult part of this challenge was carrying the instance variables from one method to the next.