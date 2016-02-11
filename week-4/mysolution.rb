# Format an Address

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def make_address (street, city, state, zip)
  puts 'Street Address?'
  street = gets.chomp
  puts 'City?'
  city = gets.chomp
  puts 'State?'
  state = gets.chomp
  puts 'ZIP?'
  zip = gets.chomp
  puts 'You live at ' + street + city + state + zip
end