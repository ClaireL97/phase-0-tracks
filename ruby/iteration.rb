

def happy_kitty
  puts "Meow meow meow"
  yield("Thomas", "Elrey")
end

happy_kitty { |name1, name2| puts "#{name1} hates cats, but #{name2} loves cats!" }

#array
animals = ["cats", "dogs", "bears", "duck"]

p animals

#iterate
animals.each do |families|
  
end
puts animals

#map!
animals.map! do |families|
  "CATS!!!!!!"
end
puts "They have taken over"
p animals

#hash
animal_types = { 
        cats: "Maine Coon",
        dogs: "Husky",
        bears: "Sun Bear",
        duck: "Mallard"
}
p animal_types

#iterate
animal_types.each do |type, breed|
  p "#{breed} is a type of #{type}."
end


number = [ 1, 2 ,3 ,4 , 5, 6, 7, 8 ,9 ,10]

letters = {
  a: "apple",
  b: "bear",
  c: "cat",
  d: "dog"
}
#A method that iterates through the items, deleting any that meet a certain condition 

number.delete_if { |number| number < 9 }
p number

letters.delete_if { |x, y| x == :b }
p letters

#A method that filters a data structure for only items that do satisfy a certain condition 
number.take_while { |x| x < 3 }
p number 

letters.fetch(:b)
p letters

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
number.bsearch { |x| x >= 6}
p number

letters.key("dog")
p letters

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops 
number.drop_while {|x| x < 4 }
p number

letters.keep_if { |x,y| y == "cat"}
p letters

