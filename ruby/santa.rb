
# 6.3 Class Attributes

# Release 0: Bring Santa to Life
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
# (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") 
# as a parameter and prints "That was a good <type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".

class Santa

	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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
santas = [] 
santas << Santa.new("agender", "black") 
santas << Santa.new("female", "Latino") 
santas << Santa.new("bigender", "white") 
santas << Santa.new("male", "Japanese") 
santas << Santa.new("female", "prefer not to say") 
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas
