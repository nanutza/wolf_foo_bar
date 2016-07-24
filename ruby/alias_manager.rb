# 5.5 Solo Challenge: Manipulating Strings with Iteration

#Release 0 _ pseudocode and write a method that takes a spy's real name 
#(e.g., "Felicia Torres") and creates a fake name (alias):

# 1) get spy's name
# 2) Swap the first and last name.
# 3) Change them all in lowercase
# 4) split into letters
# 5) Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', so "a" becomes "e"
# 6) and all of the consonants to the next consonant in the alphabet. So 'd' would become 'f'.
# 7) join them into string
# 8) capitalize
# 9) store and print

def find_next(letter, letter_array)
  curr_idx = letter_array.index(letter)
  letter = letter_array[curr_idx + 1]
end

def name_prep(real_name)
   split_name = real_name.downcase.split(' ')        
   reverse_name = split_name.reverse.join(' ')        
   letters = reverse_name.split('')
end
  
def next_letter(letter)      
  vowels = "aeioua".split('')                     
  consonants = "bcdfghjklmnpqrstvwxyzb".split('')  
  
  if vowels.include?(letter)
    find_next(letter, vowels)
  elsif consonants.include?(letter)
    find_next(letter, consonants)
  else
    letter = letter
  end
end

def spy_name_generator(real_name)

    letters = name_prep(real_name)
    letters.map! do |letter|       
    next_letter(letter)
    end
  
    spy_name = letters.join.split(' ').each{|name| name.capitalize!}.join(' ')
    puts "Well done.  Your alias is now #{spy_name}."
    spy_name
end

# # driver_code
# p spy_name_generator("Felicia Torres")


# User Interface
spy_names = {}

puts "Welcome to the Spy Name Generator.  Please type your full name. Type 'done' to exit."
    loop do
    real_name = gets.chomp.to_s

        if real_name.include?('done')
        	puts "\n\nThank you for using the Spy Name Generator!\n\n"
            spy_names.each {|real_name, spy_name| puts "#{real_name} is now #{spy_name}"}
            exit
        end
    result = spy_name_generator(real_name)
    spy_names[real_name] = result
    puts "\nWhat is the next name?"
end
