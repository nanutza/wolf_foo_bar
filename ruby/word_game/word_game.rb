require_relative 'word_bank'

class WordGame
attr_reader :word_bank 
attr_accessor :game_over, :guess_count, :word, :console

def initialize
	@word = word 
	@guesses = []
	@guess_count = 0
	@word_bank = word_bank
	@game_over = false
	@console = []
	@max_guesses
end

def play_game(word, letter)
	print_console(word)

		unless @guesses.include?(letter)
			@guesses << letter
			letter
		  	count_guesses(word,letter)
		end
	   check_letter(word,letter)
end

def check_letter(word,letter)
	 idx = 0
    if word.include?(letter)
    	word.each do 
    		if word[idx] == letter
    		   @console[idx]= letter
    		end
    	idx += 1
    	end	

    	puts "\nYay! The letter #{letter} is in the word."
    	print "#{@console.join('')}\n"

    	if @console == word
    		game_over(word)
    	end
    	@console

    else
        puts "The letter #{letter} is not in the word. You have #{@max_guesses - @guess_count} guesses left!"
    end
end

def count_guesses(word,letter)
	max = max_guesses(word)
	if @guess_count < max - 1
	    @guess_count += 1
		@guess_count
	else
	  @game_over = true
	  puts "\nGame Over. You reached the maximum guess attempts!"
	  puts "The right word is '#{word.join("")}'!"
	  exit
	end
end

def game_over(word)
    	@game_over = true
    	20.times{print " * "}
	    puts "\nCongratulations!!  You won!! The correct word is '#{word.join("")}'!"
		puts "You guessed correctly in #{@guess_count} attempts!"
		20.times{print " * "}
    	exit
end

def max_guesses(word)
	@max_guesses = (word.length * 2) + 5
end


def print_console(word)
	max_guesses(word)
	if @guesses == []
	word.length.times do
		@console << " - "
	end
	puts "Clue: The word is #{word.length} letters long."
	puts " You have a maximum of #{@max_guesses} attempts to guess!"
    print "#{@console.join('')}\n"
	@console
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


