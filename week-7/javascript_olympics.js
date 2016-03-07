 // JavaScript Olympics

// I paired by myself on this challenge. I was unable to find a time to pair.

// This challenge took me [#] hours.


// Warm Up - *not in assignment
// Bulk Up
var Phelps = {
  name: "Michael Phelps",
  events: "swimming"
}

var Bolt = {
  name: "Usain Bolt",
  events: "running"
}

var athletes = [Phelps, Bolt]

function winner(array) {
  for (var i = 0; i < array.length; i+=1) {
      array[i].win = (array[i].name + " won the " + array[i].events + "!");
    }
}
winner(athletes)
console.log(Bolt.win)

// Jumble your words
function reverse(word) {
  array = word.split("");
  reverse = array.reverse().join("");
  return reverse
}
console.log(reverse('banana'))

// 2,4,6,8
function returnEvens(num_array) {
  var newArray = [];
  for (var i = 0; i < num_array.length; i+=1) {
    if (num_array[i] % 2 == 0) {
      newArray.push(num_array[i])
    };
  };
  console.log(newArray)
}

returnEvens([1, 2, 5, 6, 8, 9])


// "We built this city"
function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

var blairWhite = new Athlete("Blair White", 24, "basketball", "wassup yall")
console.log(blairWhite.constructor === Athlete)
console.log(blairWhite.name + " " + blairWhite.sport + " " + blairWhite.quote)

// Reflection
//What JavaScript knowledge did you solidify in this challenge?
// I solidified my understanding of for loops, learned more about objects in JS, and learned about making new objects with constructor functions.

//What are constructor functions?
// Similar to class methods in Ruby, construction functions allow you to automate the creation of new objects

//How are constructors different from Ruby classes (in your research)?
// Constructors take in a variable and then the function assigns properties to that variable. In the arguments that it takes, it assigns each a value of this.___.