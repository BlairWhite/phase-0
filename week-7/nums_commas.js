// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Chunyu Ou.

// Pseudocode
// Input: Integer
// Output: String version of integer with commas separating
// Steps:
// Convert integer to string
// Convert string to array, and reverse it
// Create for loop with num_commas counter and counter to take out 3 numbers from array
//
//
// Initial Solution
// function separateComma(arg) {
//   var str = arg.toString();
//   var arr = str.split('').reverse();
//   var newArray = [], counter2 = 0;
//   for (var counter1 = 0; counter1 < arr.length; counter1 += 1) {
//       if (counter2 == 3) {
//         newArray.push(",");
//         counter2 = 0;
//       }
//       newArray.push(arr[counter1]);
//       counter2 += 1;
//   }
//     return newArray.reverse().join('');
// }
// console.log(separateComma(1234567));

// Refactored Solution

function separateComma(arg) {
  var str = arg.toString(),
      arr = str.split('').reverse(),
      newArray = [],
      counter2 = 0;

  for (var counter1 = 0; counter1 < arr.length; counter1 += 1) {
      if (counter2 == 3) {
        newArray.push(",");
        counter2 = 0;
      }
      newArray.push(arr[counter1]);
      counter2 += 1;
  }
    return newArray.reverse().join('');
}

console.log(separateComma(1234567));
console.log(separateComma(5678));
console.log(separateComma(22));
console.log(separateComma(1000));


// Your Own Tests (OPTIONAL)




// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We originally tried to come up with a fresh approach to the problem, but because our knowledge of Javascript is very limited, we ended up going with a similar method to the Ruby approach of creating a new array and adding numbers to it until a counter got up to 3, then adding a comma.
//What did you learn about iterating over arrays in JavaScript?
// I learned the syntax for a for loop to iterate over the array. It is similar to Ruby, only syntax is different.
//What was different about solving this problem in JavaScript?
// The syntax for iteration is different, as is the way to set variables.
//What built-in methods did you find to incorporate in your refactored solution?
// We used push, reverse, split, and join.