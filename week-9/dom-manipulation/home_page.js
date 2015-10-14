// DOM Manipulation Challenge
// document.body.style.backgroundColor = "red";
// I worked on this challenge [by myself, with: ]. Nathan Luo


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').className = "done";




// Release 1:
document.getElementById('release-1').style.display = "none";



// Release 2:
document.getElementsByTagName('h1')[0].innerHTML= "I finished release 2";



// Release 3:
document.getElementById("release-3").style.backgroundColor = "#955251";



// Release 4:
var arr = document.getElementsByClassName("release-4");

for (var i = 0; i < arr.length; i++){
  arr[i].style.fontSize="2em";
  console.log(arr[i]);
}

var arr2 = document.getElementsByTagName("p");
for (var i in arr2){
  console.log(i);
}

// Release 5:
var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

/*
  1. What did you learn about the DOM?
  DOM changes the document representation into objects and add a lot of
  properties to them so they can be manipulated by JavaScript or other
  languages. This makes the html file interative instead of a static
  page.

  2. What are some useful methods to use to manipulate the DOM?
  In order to manipulate the DOM, we need to first target the element.
  There are a lot of accessor methods which follow the HTML structure
  to access elements. For example getElementById, getElementsByClassName,
  etc. Also I learned the appendChild will append the content of the
  parameter to the element making the call as the last child.
*/