require_relative 'word_bank'

class WordGame
attr_reader :word_bank
attr_accessor :game_over

def initialize
	@guesses = []
	@guess_count = 0
	@game_over = false
	@console = []
	@max_guesses = 0
	@correct_letter = []
end

def play_game(word, letter)
	print_console(word)
		unless @guesses.include?(letter)
			@guesses << letter
		  	count_guesses(word,letter)
		end
	check_letter(word,letter)
end

private
def check_letter(word,letter)

	 idx = 0
    if word.include?(letter) && !@correct_letter.include?(letter)
    	word.each do 
    		if word[idx] == letter
    		   @console[idx]= letter
    		   @correct_letter << letter
    		end
    	idx += 1
    	end	
   
		    	puts "\nYay! The letter '#{letter}' is in the word."
		    	print "     #{@console.join('')}\n\n"

    	if @console == word
    		game_over(word)
    	end

    else
        puts "The letter '#{letter}' is not in the word. You have #{@max_guesses - @guess_count} guesses left!"
    end
end

def count_guesses(word,letter)

	if @guess_count < max_guesses(word) - 1
	    @guess_count += 1

	else
	  	@game_over = true
	  	  25.times{print " . "}
		  puts "\n\n     GAME OVER. You've reached the maximum guess attempts!"
		  puts "     The right word is '#{word.join("")}'!\n\n"
		  25.times{print " . "}
		exit
	end
end

def game_over(word)

    	@game_over = true
    	25.times{print " * "}
	    puts "\n\n     CONGRATULATIONS!!  You won!! The correct word is '#{word.join("")}'!"
		puts "     You guessed correctly in #{@guess_count} attempts!\n\n"
		25.times{print " * "}
    	exit
end

def max_guesses(word)
	@max_guesses = (word.length * 2) + 5
end


def print_console(word)
	max_guesses(word)
	if @guesses == []
		word.length.times do
		@console << " _ "
	end
		puts "Clue: The word is #{word.length} letters long."
		puts " You have a maximum of #{@max_guesses} attempts to guess!"
	    print "\n     #{@console.join('')}\n"
	end
end


end


# driver code
word = @word_bank.sample.delete("\n").delete("\t").split('')

game = WordGame.new

	loop do
		letter = ("abcdefghijklmnopqrstuvwxyz").split('').sample
		game.play_game(word, letter)
		break if @game_over
	end


