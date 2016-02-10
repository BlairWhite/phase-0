def name_yo(first, middle, last)
  puts 'What is your first name?'
  first = gets.chomp
  puts 'What is your middle name?'
  middle = gets.chomp
  puts 'What is your last name?'
  last = gets.chomp
  puts first +  ' ' + middle+ ' ' + last
end
def num_yo(num1)
  puts 'what is your fav number?'
  num1 = gets.chomp.to_i
  num2 = num1 + 1
  puts num2.to_s + " is a better number"
end