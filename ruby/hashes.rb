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


def get_info
    client_info = {}
  
    puts "Please enter the name of a client that would like to have an interior designer."
      client_info[:name] = gets.chomp

    puts "What is the client's age, in years?"
      client_info[:age] = gets.chomp.to_i

    puts "How many children does the client have? If none, input '0'"
      client_info[:children] = gets.chomp.to_i 

    puts "What decor theme do you prefer?"
      client_info[:decor_theme] = gets.chomp.to_s

    puts "What is the budget for this project?"
      client_info[:budget] = gets.chomp.to_i

    puts "Is it a commercial project? (y/n)"
      commercial = gets.chomp
      client_info[:is_commercial] = commercial == "y"

    client_info
end

def print_client_info(client_info)

    print "\n\n The client information is: "

	      client_info.each do |key, value|
	      print " #{key} = #{value}  ||"
	      end
end

def update_client_info(client_info)

    puts "\n\n Would you like to update any of the client's information?"
    puts " if yes, type the name of the variable to update, if no, type none.\n\n"

    updated_var = gets.chomp
    updated_key = updated_var.to_sym

    if client_info.keys.include?(updated_key) == true
        puts "What is the correct information?"
        new_value = gets.chomp
        client_info[updated_key] = new_value

        puts "The #{updated_key} has been updated."
        print_client_info(client_info)

    elsif updated_var == "none"
      	exit
    else
      	puts "\n\n This is not a valid entry"
    end
    puts "\n\n Thank You for responding!"
end


  
#USER INTERFACE 
  
client_info = get_info

print_client_info(client_info)

update_client_info(client_info)


