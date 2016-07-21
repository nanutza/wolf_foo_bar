#add refactor request with tyler
# 5.2 Arrays and Hashes 

# Interior Designer App

#     1) Prompt the designer/user for all of client's information :
#        client's name(str), age (integer), single/married (boolean), number of children (integer), 
#			ex: which room, How using, likesmodern?,likes classic?, colors, decor theme(str), budget, deadline.
#     2) Convert any user input to the appropriate data type: 
#     3) Print the hash back out to the screen when the designer has answered all of the questions.
#     4) ask is the data ok? Give the user the opportunity to update a key 
#     5) IN NO, Ask which value needs updating , IF YES - then "thank YOU!'
#     6) Ask for a new value and update the :decor_theme key. 
#          (Hint: Strings have methods that will turn them into symbols),
#     7) Print the latest version of the hash, and exit the program.



#initialize

puts "Please enter the name of a client that would like to have an interior designer."
	name = gets.chomp

puts "What is the client's age, in years?"
	age = gets.chomp.to_i

puts "How many children does the client have? If none, input '0'"
	children = gets.chomp.to_i 

puts "What decor theme do you prefer?"
	decor_theme = gets.chomp.to_s

puts "What is the budget for this project?"
	budget = gets.chomp.to_i

puts "Is it a commercial project? (y/n)"
	commercial = gets.chomp
	is_commercial = commercial == "y"


client_info = {name: name, age: age, children: children, budget: budget, commercial: is_commercial}
print "\n\n The client information is: "
client_info.each do |key, value|
	print " #{key} is #{value}  ||"
end
puts "\n\n Would you like to update any of the client's information?"
puts " if yes, type the name of the variable to update, if no, type none.\n\n"
updated_var = gets.chomp
updated_key = updated_var.to_sym

if client_info.keys.include?(updated_key) == true
	puts "What is the correct information?"
		new_value = gets.chomp
		client_info[updated_key] = new_value
	# client_info.merge!(updated_client_info) 
	puts "The #{updated_key} has been updated. The updated client information is: "
	client_info.each do |key, value|
		print " #{key} is #{value}  ||"
	    end
	puts "\n\n Thank you for responding!"
	
elsif updated_var == "none"
	puts "\n\n Thank You for responding!"
else
	puts "\n\n This is not a valid entry. Thank You for responding!"
end


