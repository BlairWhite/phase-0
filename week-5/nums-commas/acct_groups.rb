def make_group(students)
  students = students.map {|a| a.to_s}
  shuffled = students.shuffle
  answer = shuffled.each_slice(4).to_a
  puts answer
end

list = ['Adam Pinsky', Afaan Naqvi, Alana Farkas, Andrew Crowley, Andrew Vathanakamsang, Anna Lansfjord, Blair White, Brad Lindgren, Brian Donahue, Brittney Braxton, Camila Crawford, Charlie Lee, Chunyu Ou, Daniel Homer, Daniel Shapiro, David Kaiser, David Ramirez, Emily Osowski, Emmet Garber, Eric Gumerlock, Gregory Toprak, Hanna Taylor, Dave Hostios, Jack Baginski, Jaclyn Feminella. Jasmeet Chatrath, Jason Allen, Jon Norstrom, Jonathan Nicolas, Joseph Yoo, Joshua Lugo, Joshua Wu, Julia Giraldi, Kari Giberson, Katherine Broner, Kevin Fowle, Kevin Niu, Kevin Perkins, Leo Kukhar, Li-Lian Ku, Erica Lloyd, Marita Deery, Michael Verthein, Milorad Felbapov, Brian Mosley, Nick Russo, Noah Schutte, Oscar Delgadillo, Ryan Dempsey, Ryan Wilkins, Sami Zhang, Sean Norton, Shyh Hwang, Sydney Rossman-Reich, Theo Paul, Tomasz Sok, Wesley El-Amin]
make_group(list)

#Reflection
#The most difficult part of this challenge was learning how to use new methods. I initially was going to try to create a very long and elaborate system to divvy up the list, but I found a few methods that made it simple, namely .each_slice.
#Yes, pseudocode was helpful here.
#Yes, I think my code works to solve the problem. I dont think it could be more concise.
#I decided to store them in sub-arrays, created with .each_slice.
#I learned 4 new methods in total.