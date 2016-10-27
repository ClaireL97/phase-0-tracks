puts "What is your name?"
name = gets.chomp
#p name
puts "How old are you?"
age = gets.chomp

puts "What year were you born in?"
year = gets.chomp

current_year = 2016
#p current_year

if current_year-year != age
	correct_age = false
else current_year = age
	correct_age = true
end

puts correct_age


puts "Our company cafeteria serves garlic bread. Should we order some for you? Yes or No?"
bread_pref = gets.chomp

puts "Would you like to enroll in the company's health insurance? Yes or No?"
insurance = gets.chomp











puts "Actually, never mind! What do these questions have to do with anything? Lets be friends."