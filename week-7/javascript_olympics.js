 // JavaScript Olympics

// I paired [with: Alison] on this challenge.

// This challenge took me [.5] hours.


// Bulk Up
var array = [
  {name: "Sarah", event: "Single"},
  {name: "Mike", event: "Double"}
   ];

var win = function (){
  console.log(this.name + " win the "+ this.event);
}

for (var i = 0; i < array.length; i++){
  array[i].win = win;
  array[i].win();
}


// Jumble your words
var string1 = "abc";

function reverser(string){
  var arrayString = string.split('');
  return arrayString.reverse().join('');

}
console.log(reverser(string1));


// 2,4,6,8
var nums = [1,2,3,4,5,6,7,8];

function isEven(num){
  return num%2 == 0;
}

var even = nums.filter(isEven);
console.log(even);



// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// Function stored in a variable is a very interesting concept. I had some trouble understanding that. After the first release I have a much better understanding of why it use "this" and how "this" is linked to the object.

// What are constructor functions?
// Constructor functions are constomized function similar to "Object()", which takes more arguments for initializing the object's properties.

// How are constructors different from Ruby classes (in your research)?
// The constructor functions are not tied to a "class" in JavaScript because there is no "class" in JavaScript, only objects. Though the behavior is very similar to class.
//If we treat an object with certain kinds of properties as a class, then they can be changed to other "classes" by modifying the object's properties.