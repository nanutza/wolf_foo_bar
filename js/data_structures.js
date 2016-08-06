// 7.2 JS data Structures
// Release 0 declare 2 separate arrays
// release 1 create an object

var color = ["red", "green", "yellow", "brown"];
var name = ["Ed", "Bob", "Linda", "Jane"];

var horse = {name: "name", color: "color"};

for (var i = 0; i < name.length; i++) {
  console.log(name[i] = color[i]);
} 

console.log(name)

// Release 2:  write a constructor function for a car. 
// Give it a few different properties of various data types, including at least one function. 
// Demonstrate that your function works by creating a few cars with it.

var car = {name: 'Honda', age: 3, isReliable: true};

function Car(name, age, isReliable) {

  console.log("Our new car:", this);
  

  this.name = name;
  this.age = age;
  this.isReliable = isReliable;

  this.drive = function() { console.log("Vroom!"); };
  
  console.log("CAR INITIALIZATION COMPLETE");
}

console.log("Let's build a car ...");

var anotherCar = new Car("Toyota", 8, true);
console.log(anotherCar);
console.log("Our New car is amazing:");
anotherCar.drive();
console.log("----");

console.log("Let's build another car ...");
var yetAnotherCar = new Car("Ford", 2, false);
console.log(yetAnotherCar.name);
console.log("This car is a wreck");
console.log("----")