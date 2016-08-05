// 1) function that takes a string as a parameter and reverses the string. 
// reverse("hello"), for example, should return "olleh". 
// 2) break down the strings into components characters
// 3) return them in reverse order by looping
// 4) print if a ceirtain condition is true.



function reverseString (str) {
	var revStr = "";
	for (var i = str.length - 1; i >= 0; i--){
		revStr += str[i];
	}
	if (str == ""){
		console.log("This is an empty string!");
	} else if (str != revStr){
	console.log(revStr + " is the reverse string of " + str );
	} else {
		console.log(str + " is a palindrome!!");
	}
}

reverseString("hello");
reverseString("nan");
reverseString("");
reverseString("ElFolly");
reverseString("abCba");