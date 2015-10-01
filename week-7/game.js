 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Main Character and a speed token will randomly wander the board with arbitrary size. If the main character touches a speed token, it will change it's speed to the same as the token, then token will be respawned in other location.
// Goals: There is no set goal, but we can see how difficult it is to find a speed token.
// Characters: A main character.
// Objects: A speed token.
// Functions: move, runGame, printLocation

// Pseudocode
//
//
//
//
//

// Initial Code
var possibleDirections = ["up", "down", "left", "right"];
var possibleDirNew = possibleDirections.slice();
var speeds = [1,2,3];
var boardSize = 20;

// var mainChar = {
//   name: "Main Character",
//   currentDirection: "up",
//   speed: 0,
//   steps: 0,
//   location: [1,1],
// }

// var speedToken = {
//   name: "Speed Token",
//   currentDirection: "left",
//   speed: 1,
//   steps: 0,
//   location: [2, 1],
// }

// var move = function(mover) {
//   switch (mover.currentDirection){
//     case "up":
//     mover.location[1]+= mover.speed;
//     break;
//     case "down":
//     mover.location[1] -= mover.speed;
//     break;
//     case "left":
//     mover.location[0] -= mover.speed;
//     break;
//     case "right":
//     mover.location[0] += mover.speed;
//     break;
//     default:
//     console.log("Error");
//     break;
//   }

//   if (mover.location[0]<=0) {
//     mover.location[0] = 0;
//     possibleDirNew.splice(possibleDirections.indexOf("left"), 1);
//   } else if (mover.location[0]>=boardSize) {
//     mover.location[0]=boardSize;
//     possibleDirNew.splice(possibleDirections.indexOf("right"), 1);
//   }

//   if (mover.location[1]<=0) {
//     mover.location[1] = 0;
//     possibleDirNew.splice(possibleDirections.indexOf("down"), 1);
//   } else if (mover.location[1]>=boardSize) {
//     mover.location[1]=boardSize;
//     possibleDirNew.splice(possibleDirections.indexOf("up"), 1);
//   }

//   mover.currentDirection = possibleDirNew[Math.floor(Math.random()*possibleDirNew.length)];
//   mover.steps += 1;

//   possibleDirNew = possibleDirections.slice();
// }

// var runGame = function(num){
//   while (mainChar.steps < num) {
//     move(mainChar);
//     move(speedToken);
//     if (mainChar.location[0] == speedToken.location[0] && mainChar.location[1] == speedToken.location[1]){
//       console.log("Speed token found at " + mainChar.location +"!\n-------------------------------------------");
//       mainChar.speed = speedToken.speed;
//       speedToken.location = [Math.floor(Math.random()*boardSize), Math.floor(Math.random()*boardSize)];
//       speedToken.speed = speeds[Math.floor(Math.random()*2)];
//     }

//     printLocation(mainChar);
//     printLocation(speedToken);
//   }
//   console.log("Run complete!");
//   console.log("Current location is " + mainChar.location+ "!");
// }

// var printLocation = function(mover){
//   console.log(mover.name+"'s current location is " + mover.location);
//   console.log("Direction: "+ mover.currentDirection);
//   console.log("\n\n");
// }



// Refactored Code
var move = function() {
  switch (this.currentDirection){
    case "up":
    this.location[1]+= this.speed;
    break;
    case "down":
    this.location[1] -= this.speed;
    break;
    case "left":
    this.location[0] -= this.speed;
    break;
    case "right":
    this.location[0] += this.speed;
    break;
    default:
    console.log("Error");
    break;
  }

  if (this.location[0]<=0) {
    this.location[0] = 0;
    possibleDirNew.splice(possibleDirections.indexOf("left"), 1);
  } else if (this.location[0]>=boardSize) {
    this.location[0]=boardSize;
    possibleDirNew.splice(possibleDirections.indexOf("right"), 1);
  }

  if (this.location[1]<=0) {
    this.location[1] = 0;
    possibleDirNew.splice(possibleDirections.indexOf("down"), 1);
  } else if (this.location[1]>=boardSize) {
    this.location[1]=boardSize;
    possibleDirNew.splice(possibleDirections.indexOf("up"), 1);
  }

  this.currentDirection = possibleDirNew[Math.floor(Math.random()*possibleDirNew.length)];
  this.steps += 1;

  possibleDirNew = possibleDirections.slice();
}

var printLocation = function(){
  console.log(this.name+"'s current location is " + this.location);
  console.log("Direction: "+ this.currentDirection);
  console.log("\n\n");
}

function myObject(name, currentDirection, speed, location){
  this.name = name;
  this.currentDirection = currentDirection;
  this.speed = speed;
  this.steps = 0;
  this.location = location.slice();
  this.move = move;
  this.printLocation = printLocation;
}

var mainChar = new myObject("Main Character", "up", 0, [1,1]);
var speedToken = new myObject("Speed Token", "left", 1, [2,1]);


var runGame = function(num){

  while (mainChar.steps < num) {

    mainChar.move();
    speedToken.move();
    if (mainChar.location[0] == speedToken.location[0] && mainChar.location[1] == speedToken.location[1]){
      console.log("Speed token found at " + mainChar.location +"!\n-------------------------------------------");
      mainChar.speed = speedToken.speed;
      speedToken.location = [Math.floor(Math.random()*boardSize), Math.floor(Math.random()*boardSize)];
      speedToken.speed = speeds[Math.floor(Math.random()*2)];
    }

    mainChar.printLocation();
    speedToken.printLocation();


  }
  console.log("Run complete!");
  console.log("Current location is " + mainChar.location+ "!");
}



runGame(10);



// Reflection
// What was the most difficult part of this challenge?
// Both the designing and the implementation parts are difficult, but the most difficult part is the designing, trying to figure out what I want to do.

// What did you learn about creating objects and functions that interact with one another?
// Js is very generic and thus complicated in creating reusable codes compare to Ruby. I learned that a function can be treated as an object. The function can become a method for several different kinds of object. They can change different object properties using "this" to reference the objects.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// "=" will link two variables to 1 single array. In order to create a separate array, we need to use .slice to create a copy then make assignment. Also splice will mutate the original array (destructive), and the return value is the elements that being removed.

// How can you access and manipulate properties of objects?
// Using direct assignment is the simpliest way to modify properties.