// I chose to translate the calculate Mode exercise from week 6
// Pseudocode
// Create empty object and array
// iterate through array, adding array item as key in object if it does not already exist, and increasing its value by 1 if it does exist
// iterate through object and find max number of occurences
// add key names that occured most often to new array, and return that array

function findMode(array) {
  var countHash = {};
  var modeArray = new Array();
  for (var i = 0; i < array.length; i ++) {
      if (array[i] in countHash) {
        countHash[array[i]]++;
        }
      else {
        countHash[array[i]] = 1;
        }
  }
  // find max value in countHash
  var maxCount = 0
  for (var key in countHash) {
    if (countHash[key] > maxCount) {
      maxCount = countHash[key];
      }
  }
  for (var item in countHash) {
    if (countHash[item] == maxCount) {
      modeArray.push(item);
    }
  }
  console.log(modeArray);
 }

findMode([1, 2, 4, 1, 3, 2]);
findMode(["moo", "oink", "moo"]);
findMode([1, 1, 1, 1, 2, 3, 4, 5, 6, 3, 3, 3, 3, 3, 3, 3]);