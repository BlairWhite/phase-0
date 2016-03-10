// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Create a way to loop through votes object, and count each vote, placing that number into voteCount object
// Use max property to find highest vote recipient in each category
// Push highest votes recipient into officers object

// __________________________________________
// Initial Solution

// for (var voter in votes) {
//     // Alex in votes
//     if (!votes.hasOwnProperty(voter)) continue;

//     var obj = votes[voter];
//     //position in Alex
//     for (var position in obj) {
//         if(!obj.hasOwnProperty(position)) continue;

//         if (voteCount[position][obj[position]] === undefined) {
//             voteCount[position][obj[position]] = 0
//         }
//         voteCount[position][obj[position]] += 1
//     }
// }

// // console.log(voteCount)

// for (var office in voteCount) {
//   if (!voteCount.hasOwnProperty(office)) continue;

//   var obj = voteCount[office];
//   var max_count = 0
//   var name = ''
//   for (var candidate in obj) {
//     if(!obj.hasOwnProperty(candidate)) continue;
//       if (obj[candidate] > max_count)
//       {max_count = obj[candidate]
//       name = candidate}
//         }
//     officers[office] = name
// }
// console.log(officers)


// __________________________________________
// Refactored Solution
//Tally votes from raw data and add to voteCount
for (var voter in votes) {
    if (!votes.hasOwnProperty(voter)) continue;
    var obj = votes[voter];
    for (var position in obj) {
        if(!obj.hasOwnProperty(position)) continue;
        if (voteCount[position][obj[position]] === undefined) {
            voteCount[position][obj[position]] = 0
        }
        voteCount[position][obj[position]] += 1
    }
}
//Count votes in voteCount and add winner to officers object
for (var office in voteCount) {
  if (!voteCount.hasOwnProperty(office)) continue;
  var obj = voteCount[office];
  var max_count = 0
  var name = ''
  for (var candidate in obj) {
    if(!obj.hasOwnProperty(candidate)) continue;
      if (obj[candidate] > max_count)
      {max_count = obj[candidate]
      name = candidate}
        }
    officers[office] = name
}

// __________________________________________
// Reflection
// I learned how to use the 'for (var x in y)' on a nested array. This involves using one of these for statements inside the other. I also learned about the 'hasOwnProperty' issue in JS.
//We did not use any built in methods. We were able to complete it with for loops and []notation. We considered using other methods to try to change the default value of properties within an object(we determined there was no viable way of doing this, and instead chose the if statement) and using a .max method to find the winners, but opted for a more readable max_count method instead.
//My understanding of 'for (var x in y)' was solidified, as was my understanding of nested objects, hasOwnProperty, and bracket notation.
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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)