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
