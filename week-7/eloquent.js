// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var arr = ["a", "b", "c"];
arr[arr.length] = "d";
console.log(arr.length);

// var food = prompt("What is your favorite food?");
// alert(food + "is my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
function chessBoard(num){
  var cb = "";
  if (num === 1){
    cb = " ";
  }
  else {
    var lastStarting = " "; // total length = (num*num-1) + (num-1)
    console.log("Last Starting is:"+lastStarting);
    cb += lastStarting;
    for (var j = 1; j <= num; j++){
      for (var i = 1; i < num; i++){
        if (cb[cb.length-1] ===" "){cb +=  "#";}
        else if (cb[cb.length-1]==="#"){cb+= " ";}
      }
      if (j!=num){
        cb+="\n";
        if (lastStarting == " ") {
          cb+="#";
          lastStarting = "#";
        }
        else {
          cb+=" ";
          lastStarting = " ";
        }
      }

    }

  }
  console.log(cb);
}

chessBoard(8);

// Functions

// Complete the `minimum` exercise.
function min(num1, num2){
  if (num1<=num2){return num1;}
  else {return num2;}
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Nathan",
  age: 26,
  favoriteFood: ["fish", "steak", "lettus"],
  quirk: "hold arms",
}