// var validation_messages = {
//     "key_1": {
//       "your_name": "jimmy",
//       "your_msg": "hello world"
//     },
//     "key_2": {
//       "your_name": "billy",
//       "your_msg": "foo equals bar"
//     }
// }


// for (var key in validation_messages) {
//    if(validation_messages.hasOwnProperty(key))
//       var obj = validation_messages[key];
//       for (var prop in obj) {
//          if (obj.hasOwnProperty(prop)) {
//           console_log(prop + " = " + obj[prop]);
//          }
//       }
//    }
// }

// for(var key in validation_messages){
//     for(var subkey in validation_messages[key]){
//         if subkey === "your"
//     }
// }

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

/* The name of each student receiving a vote for an office should become a candidate
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
// 1. Loops through votes(voters in votes, and the candidates inside) check if the name is already in the votecount in the corresponding officer.
// 2. if it is, add 1 to the value of the candidate.
// 3. if not, create a new candidate with value 1.
// 4. Loop through each offices in votecount, and loop through each candidates as well, find the maximum value and the name for the candidate.
// 5. assign the winning candidate's names to the officer position.

// __________________________________________
// Initial Solution

// function loopthrough(obj,targetObj){

//   for (var prop in obj){ // prop = student name; i.e. "Alex"
//     if(obj.hasOwnProperty(prop)){
//       for (var subProp in obj[prop]){ //votes[prop] = students votes;  i.e { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
//                                         // subProb = president / vicePresident etc.
//                                         // votes[prop][subProp]="Bob"
//         if (obj[prop].hasOwnProperty(subProp)){
//           var name = obj[prop][subProp];
//           if (targetObj[subProp][name]){
//             targetObj[subProp][name] += 1;
//           }
//           else {
//             targetObj[subProp][name]=1;
//           }

//         }

//       }

//     }
//   }
// }

// function loopthrough2(obj,targetObj){
//    var winnerName = "";

//   for (var prop in obj){ // prop = office; i.e. "President" type of Object
//     if(obj.hasOwnProperty(prop)){
//       var max = 0;
//       for (var subProp in obj[prop]){ //obj[prop] = every candidate and votes;  i.e { president: "Bob: 1", "Karen:2" }, type of Object
//                                         // subProp = candidate name
//                                         // obj[prop][subProp]=number of votes

//         if (obj[prop].hasOwnProperty(subProp)){
//           var voteNumber = obj[prop][subProp];
//           if (voteNumber > max){
//             max = voteNumber;
//             winnerName = subProp;
//           }

//         }

//       }
//       targetObj[prop] = winnerName;

//     }
//   }
// }

// loopthrough(votes, voteCount);

// loopthrough2(voteCount,officers);




// __________________________________________
// Refactored Solution

for (var prop in votes){
  for (var subProp in votes[prop]){
    var name = votes[prop][subProp];
    if (voteCount[subProp][name]){
      voteCount[subProp][name] += 1;
    }
    else {
      voteCount[subProp][name]=1;
    }
  }
}


var max = 0;
var winnerName;

for (var prop in voteCount){
  for (var subProp in voteCount[prop]){
    var voteNumber = voteCount[prop][subProp];
    if (voteNumber > max){
      max = voteNumber;
      winnerName = subProp;
    }

  }
  officers[prop] = winnerName;
  max = 0;

}



// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// Looping through object can be very confusing because we have to make sure what each level is. Accessing the inner object of an object is very challenging through the process.


// Were you able to find useful methods to help you with this?
// We use inline comments to identify what exactly each level of accessing is.
// For example if outter loop is votes, then prop is student names and votes[prop] is an object.
// Inside this inner object, subProp is office and votes[prop][subProb] will access the inner value.

// What concepts were solidified in the process of working through this challenge?
// They way to access values in nested objects is solidified. They are very similar to Ruby nested structure. It took us sometime to grasp the whole idea. I forgot to apply the same idea from Ruby to make it easier.
// Another thing is we are trying to construct a general function which takes callback functions to do specific tasks. We decided it is not worth it in this specific scenario.



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