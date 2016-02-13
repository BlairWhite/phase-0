# Calculate a Grade

# I worked on this challenge by myself.
def get_grade(number)
  if number >= 90
    return 'A'
  end
  if number >= 80 && number < 90
    return 'B'
  end
  if number >= 70 && number < 80
    return 'C'
  end
  if number >= 60 && number < 70
    return 'D'
  end
  if number < 60
    return 'F'
  end
end
