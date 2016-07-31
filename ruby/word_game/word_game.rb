require_relative 'word_bank'

class WordGame
attr_reader :word_bank
attr_accessor :game_over, :guess_count, :word, :console

def initialize
	# @word_bank = word_bank
	@word = word 
	@guesses = []
	@guess_count = 0
	@word_bank = word_bank
	@game_over = false
	@console = []

def max_guesses(word)
	(word.length * 2) + 2
end

def count_guesses(word,letter)
	max = max_guesses(word)
	if @guess_count <= max - 1
	    @guess_count += 1
		@guess_count
	else
	  @game_over = true
	  puts "Game Over"
	  exit
	end
end

def print_console(word)
	if @guesses == []
	word.length.times do
		@console << " - "
	end
    print "#{@console}\n"
	@console
	end
end
	puts 
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
    	print "#{@console}\n"
    	@console
    else
        puts "The letter #{letter} is not in the word"
    end
end

def play_game(word, letter)
	p count_guesses(word,letter) 
	p max_guesses(word)
	print_console(word)
	unless @guesses.include?(letter)
		@guesses << letter
		letter
	  	p count_guesses(word,letter)
	end
   check_letter(word,letter)
  
end

end


# driver code

# word = @word_bank.sample.delete("\n").delete("\t")
# user interface



# word = @word_bank.sample.delete("\n").delete("\t")
word = "hello".split('')
game = WordGame.new
p word
game.play_game(word, "o")
game.play_game(word, "e")
game.play_game(word, "b")
game.play_game(word, "l")
game.play_game(word, "u")
game.play_game(word, "h")
game.play_game(word, "m")
game.play_game(word, "p")
game.play_game(word, "y")
game.play_game(word, "d")
game.play_game(word, "f")
game.play_game(word, "g")
game.play_game(word, "h")
game.play_game(word, "j")
game.play_game(word, "k")
# game.play_game(word, "l")
# game.play_game(word, "n")
# game.play_game(word, "q")
# game.play_game(word, "r")
# game.play_game(word, "s")
# game.play_game(word, "t")
# game.play_game(word, "v")
# game.play_game(word, "x")
# game.play_game(word, "z")

