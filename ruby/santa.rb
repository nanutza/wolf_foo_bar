
# 6.3 Class Attributes

# Release 0: Bring Santa to Life
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
# (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") 
# as a parameter and prints "That was a good <type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".

class Santa
	
	attr_reader :gender   								#refactor getter
	attr_accessor :age, :ethnicity                      #refactor setter


	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	#Release 2  -   getter and setter methods  (refactored in release 3)

	# def gender=(gender)
	# 	@gender = gender
	# end

	# def age(age)
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	def celebrate_birthday
		puts "Santa's current age is #{@age}"
		@age += 1
		puts " After his birthday, Santa's new age is: #{@age}"
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
		p @reindeer_ranking
	end


	def speak
		p "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!" 
	end
end


#Driver Code

claus = Santa.new("male","Caucasian")
claus.speak
claus.eat_milk_and_cookies("snickerdoodle")


# Release 1: DRIVER_CODE
# santas = [] 
# santas << Santa.new("agender", "black") 
# santas << Santa.new("female", "Latino") 
# santas << Santa.new("bigender", "white") 
# santas << Santa.new("male", "Japanese") 
# santas << Santa.new("female", "prefer not to say") 
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas


# Release 1: Refactored Code

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"] 
example_genders.length.times do |i| 
	santas << Santa.new(example_genders[i], example_ethnicities[i]) 
	#p santas[i] 
end

# Release 2: Change an Attribute with a Method

# Add three attribute-changing methods to your Santa class:
	# celebrate_birthday should age Santa by one year.
	# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
	# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
	# Add two "getter" methods as well:
# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.


claus.celebrate_birthday
claus.get_mad_at("Vixen")
p claus.gender
p claus.ethnicity

