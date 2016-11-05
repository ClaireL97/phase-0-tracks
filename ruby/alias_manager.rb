#Take spys name as input in ()
#make it take value of name and split it into 2 words in an array
#reverse the array and rejoin the 2 words
#split the name into individual characters
#make each letter move forward once except for vowels
#make each vowel move

#this one takes name and splits it and rejoins it
def name_flipper(name)
split_name = name.split(' ')
#p split_name
flipped_name = split_name.reverse.join(' ')
#p flipped_name
flipped_name
end



def letter_changer(swapped_name)
	character_split = swapped_name.split('')
	next_character = character_split.map!{|character_split|character_split.next}
	character_split

end

p letter_changer("Jelly Fish")




puts "Type the name you want to process. When you are done type quit."
name = gets.chomp
until name == "quit"
	p name_flipper(name)
	puts "Type the name you want to process. When you are done type quit."
	name = gets.chomp

end



