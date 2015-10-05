// PERSON NUMBER 4 //////////////////////////////////////////////////////

// Sum function
var sum = 0

function combine(numbers){
  for (var index in numbers){
    sum=numbers[index] +sum
  };
  return sum
};


//Mean Function//
function mean(numbers){
   var mean= combine(numbers);
   return mean/ numbers.length;
};

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

};


console.log(combine([3,4,2,1,6,8,9,10,11]))
console.log(mean([3,4,2,1,6,8,9,10,11]))
console.log(median([3,4,2,1,6,8,9,10,11]))

// User Stories

// As a user, I need to be perform the following operations on sets of numbers:
//(a) I need to be able to sum large amounts of numbers
//(b) I need to calculate the average of a list of numbers
//(c) I need to be able to find the median of a set of numbers.



// And if you want it in a more roleplaying/real-world type fashion:
// As a teacher, I need a program to calculate number grades for 3 tasks:
// (1) I need to sum one student's number grades for the semester
// (2) Calculate the class average
// (3) Select a median number grade






//////////////////////////////////////////////End of Person Four's Work////


