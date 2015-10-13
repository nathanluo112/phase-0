/*
  User Story:
  1. I would like to create a grocery list contains
     the items and their quantity
  2. Able to add item and their quantity to the list
  3. Able to change quantity to a specific item
  4. Able to remove item
  5. Print the list in a nice form


  Pseudocode:
  1. Create an object called grocery list
  2. add items as the property to the list
  3. Each item has a value as their quantity
  4. Add 4 methods for the object: add, remove, update, print

  add:
  1. takes an item and an optional quantity as argument,
  2. add the item in the object and assign its value to the quantity
    if provided
  3. if quantity is not provided, set the value as 1

  remove:
  1. takes an item as argument
  2. if the item is one of the property, remove the property from the
     list
  3. if not exist, does nothing.

  update:
  1. takes an item and a quantity as argument
  2. if item not exist, act like add
  3. if item exist, change its value to the new quantity

  print:
  print the list in a nice form
*/

var groceryList = new Object();

groceryList.add = function(item, qty){
  if (qty){
    this[item] = qty;
  }
  else{
    this[item]=1;
  }
}

groceryList.remove = function(item){
  delete this[item];
}

groceryList.update = function(item, qty){
  this[item] = qty;
}

groceryList.print = function(){
  var total = 0;
  for (var i in this){
    if ((i!='add') && (i!='remove') && (i!='update') && (i!='print')){
      console.log(i + ' ------------ ' + this[i])
      total +=1;
    }
  }
}

groceryList.add("apple",10);

//groceryList.print();
//groceryList.remove("apple");
groceryList.update("apple", 20);
groceryList.print();


/*
  1. What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
  I was a bit confused about creating a new variable and adding new keys in the object.
  When adding new keys to object, it is unecessary to use var to declare since it is not a variable.
  Also the boolean statement for if statement need to be grouped nicely with parentheses or the compiler won't recognize the syntax.

  2. What was the most difficult part of this challenge?
  Deciding the structure is the most difficult part of the challenge. Since we were using hash as the container, I chose object instead of other nested structures.

  3. Did an array or object make more sense to use and why?
  Object is more straightforward since all the item will need a quantity associate with it and they don't need a specific order to arrange them.

*/