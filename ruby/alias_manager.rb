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


def letter_swapper(swapped_name)
	split = swapped_name.split('')
	vowels =["a","e","i","o","u"]
	code_name = ""
	split.each do |letter|
	 	if letter == " "
	 		code_name += " "
	 	elsif letter.downcase == "a"
	 		code_name += "e"
	 	elsif letter.downcase == "e"
	 		code_name += "i"
	 	elsif letter.downcase == "i"
	 		code_name +="o"
	 	elsif letter.downcase == "o"
	 		code_name += "u"
	 	elsif letter.downcase == "u"
	 		code_name += "a"
	 	elsif letter.downcase == "z"
	 		code_name += "a"
	 	else
	 		letter = letter.downcase.next
	 		if vowels.include?letter
				letter = letter.next
			end
			code_name += letter
	 	end	
	 end
	 code_name
end





puts "Type the name you want to process. When you are done type quit."
name = gets.chomp
saved_names = {}
until name == "quit"
	code_name = letter_swapper(name_flipper(name))
	p code_name	
	saved_names[name] = code_name
	puts "Type the name you want to process. When you are done type quit."
	name = gets.chomp

end
p saved_names

