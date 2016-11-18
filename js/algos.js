//create array and set it as a variable
//use a function to loop though each item and take length of each string in array
//create a second array with the word lengths in number
//use a method to find out the largest number in the array of numbers
//get the index of that number
//print value at index of words (which will end up being the longest one)

var phrases = ["long phrase","longest phrase","longer phrase"];
var fruit =["Apple","Iced Tea","Peanut Butter and Jelly","Honey"];


function long_phrase_finder(array){
	var string_lengths = [];
	for (var i = 0; i < array.length; i++) {
		string_lengths.push(array[i].length);
	}
	var max = Math.max.apply(Math,string_lengths);
	//console.log(max);
	var index = string_lengths.indexOf(max);
	//console.log(index);
	console.log(array[index]);
}

//create two example objects with data inside of them
//iterate though the keys
//if both objects have the same key check the values
//if the values are the same then set match to true
//if none of them match then set match to false


//write a function that takes interger for array length
//create an empty array and set as variable
//create a variable with all possible letters capital and lowercase in an array
//make a loop that runs for number of array length
//make that loop generate a random number between 1 and 10 for length of word
//Math.floor((Math.random()*10)+1) returns a random number between 1 and 10
//take one random letter from array for every character in length of word
//note use letter = letterarray[Math.floor(Math.random() * favorites.length)];
function random_word_gen(array_length){
	var random_words = [];
	var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];

 	for (i = 0; i < array_length; i++){
 		var word = "";
 		for (l = 0; l < Math.floor((Math.random()*10)+1); l++){
 			var letter = letters[Math.floor(Math.random() * letters.length)];
 			word += letter;
 		}
	random_words.push(word);
	}
console.log(random_words)
return random_words

}


//Driver Code Area
//random_word_gen(10);
//this next driver code combines the random_word_gen function with the long phrase finder
long_phrase_finder(random_word_gen(10));
long_phrase_finder(fruit);
long_phrase_finder(phrases);