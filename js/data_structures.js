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

// Release 3: Research on Your own

// If you wanted to loop through the keys and values of an object, 
// how would you do that? 

// A) a for-in loop
// for (var key in p) {
//   if (p.hasOwnProperty(key)) {
//     console.log(key + " -> " + p[key]);
//   }
// }

// or if Object is clean - simplified:
// for (var key in p) {
//     console.log(key + ' => ' + p[key]);
//     // key is key
//     // value is p[key]
// }

// for (var key in p) {
//   alert(p[key]);
// }

// In ECMAScript 5 you have new approach in iteration fields of literal - Object.keys
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
// var keys = Object.keys(p),
//     len = keys.length,
//     i = 0,
//     prop,
//     value;
// while (i < len) {
//     prop = keys[i];
//     value = p[prop];
//     i += 1;
// }

// Under ECMAScript 5, you can combine Object.keys() and Array.prototype.forEach():

// var obj = { first: "John", last: "Doe" };

// Object.keys(obj).forEach(function(key) {
//     console.log(key, obj[key]);
// });
// ES2017 adds Object.entries() which avoids having to look up each value in the original object:

// Object.entries(obj).forEach(
//     ([key, value]) => console.log(key, value)
// );
// Both Object.keys() and Object.entries() iterate properties in the same order as a for...in loop 
// but ignore the prototype chain. Only the object's own enumerable properties are iterated 


// Are there advantages to using constructor functions to create objects?
// Disadvantages? 
// http://thecodeship.com/web-development/methods-within-constructor-vs-prototype-in-javascript/
//  Javascript is not your classic class-based language (constructor) but rather a prototype-based language.
//  The advantage of using constructor functions is that is very simple, 
//  particularly since we are coming from Ruby. 
//  It can be useful if we needed access to local private variables from our method.
//  The disadventage is any method attached via this will get re-declared for every new instance we create, 
//  which could affect the memory negatively if we wish to create so many instances.



