//Create a function called reverse that recieves an argument
// turn the argument into an array
// reverse the array
// join the array together in reverse order


function reverse(string_of_choice){
	splitstring = string_of_choice.split('')
	reversed_split = splitstring.reverse()
	return reversed_split.join('');
}

reverse("Hello World")