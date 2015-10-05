// As a user, I want to have 3 different operations.
// 1. Calculate the sum of arbitrary amount of numbers
// 2. Calculate the mean of arbitrary amount of numbers
// 3. Calculate the median of arbitrary amount of numbers

// Turns out the code doesn't work properly, but just some minor mistakes.

// 1. The name for the sum function is actually "sum" instead of "combine".

// 2. It is better if there is no global variable being used for this function. So the variable "sum", which would be conflicting the function name, needs to be inside the function "sum".

// 3. The function name need to be unique to other identifiers. In function "mean" both the function name and the return variable is called "mean". This will cause conflict on the compiler.

// Nice job on the median!

// So far the group has been doing a decent job on the work flow. We simulate the scenario and has found out about the problems that can happen in each step and each iteration.
// Eventually if we goes through the process a couple more times, it would be more accurate. For example, person 1 will have a clearer (more detailed) description of the story, so person 2 will have more accurate pseudocode for person 3 and 4 to translate to actual code.
// We need more practice to get use to this work flow.

// ---------------- Code -----------------------
// Sum function

function sum(numbers){
  var total = 0;
  for (var index in numbers){
    total=numbers[index] +total
  };
  return total
};


//Mean Function//
function mean(numbers){
   var m_num = sum(numbers);
   return m_num / numbers.length;
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
