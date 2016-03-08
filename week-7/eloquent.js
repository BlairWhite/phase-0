// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
// var carrot = 12;
// console.log(carrot * carrot);

// prompt("What is your favorite food?");
// alert("Me too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// var i = 0
// var hash = '#'
// while (i<8) {
//   console.log(hash)
//   i += 1
//   hash += '#'
// }

// var count = 0;
// var number = 1;
// while (count < 101) {
//   if (number % 3 == 0 && number % 5 == 0) {
//     console.log("FizzBuzz")}
//   else if (number % 3 == 0) {
//     console.log("Fizz")}
//   else if (number % 5 == 0) {
//     console.log("Buzz")}
//   else {
//     console.log(number)}
//   count += 1
//   number += 1
// }

// Functions

// Complete the `minimum` exercise.

function minimum (x, y) {
  if (x < y) {
    return x}
  else {
    return y}
}
console.log(minimum(0, 10));
console.log(minimum(0, -10));


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = ["Blair White", 24, "pizza", "pineapple", "enchilada", "fear of sharks"]