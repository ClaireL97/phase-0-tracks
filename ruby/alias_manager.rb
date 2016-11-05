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
			code_name += letter.next
	 	end	
	 end
	 code_name
end







puts "Type the name you want to process. When you are done type quit."
name = gets.chomp
until name == "quit"
	p letter_swapper(name_flipper(name))
	puts "Type the name you want to process. When you are done type quit."
	name = gets.chomp


end



