
// Add the finished solution here when you receive it.
// Sum function
var sum = 0

function combine(numbers){
  for (var index in numbers){
    sum=numbers[index] +sum
  };
  return sum
}


//Mean Function//
function mean(numbers){
   var mean= combine(numbers);
   return mean/ numbers.length;
}

//Median Function
// This is where variable x was renamed and Math.floor was refactored, as well as 2 comments to make action slightly more explicit
function median(numbers){

  var sorter= numbers.sort(function (a,b){return a-b});
  if (sorter.length %2===1){ //if odd
    var median= Math.floor(sorter.length/2);
    return(sorter[median]);}

  else if(sorter.length % 2 ===0) // if even
    {var median=sorter.length/2;
    return (sorter[median] +sorter[median-1])/2}

  else
    return "Please enter an array of integers";

}
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)