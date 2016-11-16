// var colors = ["Blue", "Purple", "Hunter Green", "Gold"];
// var names = ["Ed", "Al", "Sammy", "George"];

// colors.push("Snowy White");
// names.push("Winter");

// console.log(colors);
// console.log(names);


// var horse = {"Ed": "Blue"};

// console.log(horse);

// function organizeHorse(arr1, arr2){
//    var horse = {};
//    for (var i = 0; i < arr1.length; i++){
//     horse [arr1[i]] = [arr2[i]];
//    }
//    return horse;
// }

// console.log(organizeHorse(names,colors));


function constructor(brand, color, year, safe) {
    
  console.log("Thank you for buy from us CE.Inc. You car is:");

  this.brand = brand;
  this.color = color;
  this.year = year;
  this.safe = safe;

  this.speed = function() { console.log("I am a fast car!!!! Beep Beep"); };
  this.bad = function() { console.log("Still working out some bugs :("); };
}

var newCar = new constructor("Ford", "Snow White", 2014, true);
console.log(newCar);
newCar.speed();

var newCar2 = new constructor("Toyota", "Purple", 3000, false);
console.log(newCar2);
newCar2.bad();

var newCar3 = new constructor("Honda", "Hunter Green", 2016, true);
console.log(newCar3);
newCar3.speed();

// For looping we found there are statements and declarations such as
// for, for..in, for.. of, while, do...while that can be used.

//Disadvantages we would have to manually write several arguments for a function. 

