// var a = [1,2,3,4,5];
// var b = [];
// b = a.splice(3,1);
// a.reverse();
// console.log(b);
// console.log(a);

var mainChar = new Object();
mainChar.name = "Main Character";
mainChar.currentDirection = "up";
mainChar.speed = 0;
mainChar.age = 0;
mainChar.location = [1,1];


console.log(mainChar);

var move = function() {
  this.location = [10,10];
  console.log("What is this? "+ this.location);
  this.age += 1;
}
var setAge = function (newAge) {
  this.age = newAge;
};

mainChar.setAge = setAge;
mainChar.move = move;
mainChar.move();
console.log(mainChar);
mainChar.setAge(50);
console.log(mainChar);

