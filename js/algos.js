//create array and set it as a variable
//use a function to loop though each item and take length of each string in array
//create a second array with the word lengths in number
//use a method to find out the largest number in the array of numbers
//get the index of that number
//print value at index of words (which will end up being the longest one)

var strings = ["long phrase","longest phrase","longer phrase"];
var string_lengths = [];
for (var i = 0; i < strings.length; i++) {
	string_lengths.push(strings[i].length);
}
var max = Math.max.apply(Math,string_lengths);
//console.log(max);
var index = string_lengths.indexOf(max);
//console.log(index);
console.log(strings[index]);







