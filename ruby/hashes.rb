#create client info hash
#create client_name variable for inside the hash
#get info for client name and save (gets.chomp)
#create client age variable inside hash
#get client age (gets.to_i) since it is a number value
#create child number variable
#get the number of children from client
#create decor theme area
#get decore theme
#ask if satisfied with the current output
#if unsatisfied let them change a variable
puts "What is the clients name?"
client_name = gets.chomp
puts "How old is the client?"
client_age = gets.to_i
puts "How many children?"
children_number = gets.to_i
puts "What do you want the decor theme to be?"
decor_theme = gets.chomp

client_info = {
	:client_name => client_name,
	:client_age => client_age,
	:children_number => children_number,
	:decor_theme => decor_theme
}
p client_info

puts "Would you like to update any values? If so, type which value you want to edit. Otherwise Type none."
updates = gets.chomp

if updates == "none"
	p client_info

elsif updates == "client_name"
	puts "What would you like to change it to?"
	client_info [:client_name] = gets.chomp
	p client_info
	
elsif updates == "client_age"
	puts "What would you like to change it to?"
	client_info[:client_age] = gets.to_i
	p client_info
elsif updates == "children_number"
	puts "What would you like to change it to?"
	client_info[:children_number] = gets.to_i
	p client_info

elsif updates == "decor_theme"
	puts "What would you like to change it to?"
	client_info[:decor_theme] = gets.chomp
	p client_info	
end
