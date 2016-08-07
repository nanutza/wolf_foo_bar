// 7.3 Solo Challenge: Algorithm Practice
// Release 0: Find the Longest Phrase
// Pseudocode:
// 1.  Take an list of items
// 2.  for each one count the number of characters
// 3.  compare and sort from shortest to longest in length
// 4.  return the longest phrase.

function longestPhrase(phrase) {
var phrases = phrase;

phrases.sort(function(a, b) {
	return b.length - a.length;
});
console.log(phrases[0]);
}

// for (var i = 0; 1 < phrases.length - 1; i++) {
// 	if (phrases[i].length < phrases[i + 1].length) {
// 		var foo = phrases[i];
// 		phrases[i] = phrases[i + 1];
// 		phrases[i + 1] = foo;
// 	} 
	
// }
// console.log(phrase[0])
// }
// Release 0

longestPhrase(["long phrase","longest phrase","longer phrase"])
longestPhrase(["apple", "tangerine", "orange", "egg","grape-fruit", "chocolate_chip_cookie"])