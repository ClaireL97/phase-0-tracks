//Create a function called reverse that recieves an argument
// turn the argument into an array
// reverse the array
// join the array together in reverse order

function reverse(string_of_choice){
	//console.log (string_of_choice);
	splitstring = string_of_choice.split('');
	reversed_split = splitstring.reverse();
	return reversed_split.join('');
}


function call_reverse(string){
	return reverse(string);
}

//call_reverse("Hello World")
var reverse_string = call_reverse("Hello World");
var isPalindrome = false;
//console.log(reverse_string);
if (isPalindrome == false){
	console.log (reverse_string);
}