# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase
#1. errors.rb
#2 Error occurs on line 8.
#3 It is a syntax error.
#4 After the error, it will tell you what the particular issue is.
#5 I do not see the purple arrow. The next comment says the code was analyzed in the Readme file. I am not sure where this would be located.
#6 Interpreter gave this error because the variable has to be written first, then assigned to a value, not the other way around.

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
 # while true
  #  puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#176
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end of input, expecting keyword_end
# 5. Where is the error in the code?
#There should be another end after the 'while' clause.
# 6. Why did the interpreter give you this error?
#another end needs to be included.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#41
# 2. What is the type of error message?
#Name error
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method `south_park' for mai
# 4. Where is the error in the code?
#41
# 5. Why did the interpreter give you this error?
#Variable needs to be assigned to something.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#56
# 2. What is the type of error message?
#Method error
# 3. What additional information does the interpreter provide about this type of error?
#Undefined method
# 4. Where is the error in the code?
#56
# 5. Why did the interpreter give you this error?
#Method is undefined.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#71
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#wrong number of arguments (1 for 0)
# 5. Why did the interpreter give you this error?
#The method does not include any arguments, but takes one.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
 # puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
#90
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#Line 94 does not include an argument.
# 5. Why did the interpreter give you this error?
#Line 94 needs an argument.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
 # puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#111
# 2. What is the type of error message?
#Argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments 1 for 2
# 4. Where is the error in the code?
#method takes two arguments, but 115 only provides one.
# 5. Why did the interpreter give you this error?
#method takes two arguments, but 115 only provides one

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#130
# 2. What is the type of error message?
#type error
# 3. What additional information does the interpreter provide about this type of error?
#string cant be coerced into fixnum
# 4. Where is the error in the code?
#5 cant be multiplied by a string
# 5. Why did the interpreter give you this error?
#5 cant be multiplied by a string

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#145
# 2. What is the type of error message?
#zero division error
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#cant divide by 0
# 5. Why did the interpreter give you this error?
#cant divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#161
# 2. What is the type of error message?
#load error
# 3. What additional information does the interpreter provide about this type of error?
#cannot load file
# 4. Where is the error in the code?
#the file does not exist so it cant be loaded
# 5. Why did the interpreter give you this error?
#cant load file that doesnt exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#The one on line 19 because the line in the error message threw me off.
#I only saw one 'end' and thought that the while clause needed one as well.
#Yes I was!
#I will go to the line mentioned and check it out!