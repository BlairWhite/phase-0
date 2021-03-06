
/*
Gradebook from Names and Scores
I worked on this challenge with Chunyu Ou.
This challenge took me [#] hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]
// __________________________________________
// Write your code below.

// var gradebook = {};
// gradebook.Joseph = {};
// gradebook.Susan = {};
// gradebook.William = {};
// gradebook.Elizabeth = {};
// console.log(gradebook)
// gradebook.Joseph.testScores = [80, 70, 70, 100];
// gradebook.Susan.testScores = [85, 80, 90, 90];
// gradebook.William.testScores = [75, 70, 80, 75];
// gradebook.Elizabeth.testScores = [100, 90, 95, 85];
// console.log(gradebook)

// gradebook.addScore = function addScore(name, score) {gradebook.name.testScores << score
// }
// gradebook.getAverage = function


// __________________________________________
// Refactored Solution
var gradebook = {
Joseph: {},
Susan: {},
William: {},
Elizabeth: {}
};
gradebook.Joseph.testScores = [80, 70, 70, 100];
gradebook.Susan.testScores = [85, 80, 90, 90];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = [100, 90, 95, 85];

gradebook.addScore = function(name, score) {gradebook[name].testScores.push(score);};

function average(array) {
  var sum = 0;
  var counter = 0;
  while (counter < array.length) {
    sum += array[counter]
    counter += 1
  }
  return (sum/(array.length))
}

gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores);
};


// __________________________________________
// Reflect
//
// I learned that you can set the function name as a property of the object, and set the value of the name equal to the function code.
// Iterating over nested arrays in JS is very similar to Ruby. You can access elements with a series of [] with index numbers. I used a while loop when I had to iterate over an array for .average.
// I was unable to incorporate any new methods. This code was simple and I thought the most DRY solution was what I originally came up with.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)