# 5.5 Solo Challenge: Manipulating Strings with Iteration

#Release 0 _ pseudocode and write a method that takes a spy's real name 
#(e.g., "Felicia Torres") and creates a fake name (alias):

# 1) get spy's name
# 2) Swapping the first and last name.
# 3) change them all in lowercase
# 4) split into letters
# 5) Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', so "a" becomes "e"
# 6) and all of the consonants to the next consonant in the alphabet. So 'd' would become 'f'.
# 7) join them into string
# 8) capitalize
# 9) store and print

Spy_Names = Hash.new

def spy_name_generator
	loop do
		puts "Welcome to the Spy Name Generator.  Please type your full name. Type 'done' to exit."
		real_name = gets.chomp.to_s
		
		if real_name.include?('done')
			Spy_Names.each {|real_name, spy_name| puts "#{real_name} is now #{spy_name}"}
			exit
		end

		split_name = real_name.downcase.split(' ')				
		reverse_name = split_name.reverse.join(' ')		    
		letters = reverse_name.split('')					
	
		letters.map! do |letter| 							
			vowels = "aeioua".split('')                     
			consonants = "bcdfghjklmnpqrstvwxzb".split('')	
			
		if vowels.include?(letter)
				
				curr_idx = vowels.index(letter)
				letter = vowels[curr_idx + 1]
		
		elsif consonants.include?(letter)

				curr_idx = consonants.index(letter)
				letter = consonants[curr_idx + 1]
		else
				letter = letter
		end
	end
	
		spy_name = letters.join.split(' ').each{|name| name.capitalize!}.join(' ')
	
		puts "Well done.  Your fake name is now #{spy_name}."
		Spy_Names[real_name] = spy_name
	end
end

spy_name_generator

# # driver_code
# p spy_name_generator ("Felicia Torres")

