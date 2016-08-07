// 7.3 Solo Challenge: Algorithm Practice
// Release 0: Find the Longest Phrase
// Pseudocode:
// 1.  Take an list of items
// 2.  for each one count the number of characters
// 3.  compare and sort from shortest to longest in length
// 4.  return the longest phrase.


var phrases = ["long phrase","longest phrase","longer phrase"]
var wordLength = [0,0,0]

for (var i = 0; 1 < phrases.length; i++) {
	wordLength[i] = phrases[i].length;
	wordLength.sort(function(a, b) {return a - b});
}
console.log(phrases[wordLength[2]])