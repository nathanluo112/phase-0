// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: a number
// Output: String of numbers with commas every 3rd

// Define function separateComma and pass number in as argument
// create a new empty string to store the result
// count from right
// put 3 digits to the string
// insert a comma to the string


// Initial Solution
//var separateComma = function(number) {
//  var stringNumber = toString(number);
//  var commaNumber = "";
//  var i = -1;                                                                     var counter = stringNumber.length;
//   for ( counter>3 ){
//     var commaNumber = stringNumber.slice(i-2, i);
//     i -= 3;
//     counter -=3;
//   }
//    for ( counter>3 ; counter -=3) {
//      var commaNumber = stringNumber.slice(i-2, i);
//      i -= 3;

//  }
//


// Refactored Solution
var separateComma = function(number) {
  var stringNumber = number.toString();
  var commaNumber = "";
  var counter = 1;
  for (var i=stringNumber.length-1; i>=0; i--){
    commaNumber = stringNumber[i] + commaNumber;
    if (counter == 3 && i>0){
      commaNumber =  ',' + commaNumber;
      counter =  0;
    }
    counter +=1;
  }
  // -------------------------

  // -------------------------
  return commaNumber;

}



// Your Own Tests (OPTIONAL)
console.log(separateComma(1));
console.log(separateComma(12));
console.log(separateComma(123));
console.log(separateComma(1234));
console.log(separateComma(123456789));

// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I use a very similar logic as before since I didn't use the reverse method in Ruby.

// What did you learn about iterating over arrays in JavaScript?
// It is a lot more generic than Ruby. All the iterators in Ruby follows a very similar idea as the for loop in JavaScript, but has more functions built-in. We have to build everything manually in JS.

// What was different about solving this problem in JavaScript?
// The functions and iterators needs to be built in a generic way. And syntax is more strict than Ruby.

// What built-in methods did you find to incorporate in your refactored solution?
// There are not much built-in methods being used. The toString is a very handy one. We decided to use toString instead of parseInt because it's a bit more intuitive in terms of name.