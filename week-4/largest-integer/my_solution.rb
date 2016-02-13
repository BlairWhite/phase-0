def largest_integer(list_of_nums)
  largest = list_of_nums[0]
  list_of_nums.each {|i| largest = i if i > largest}
  largest
end