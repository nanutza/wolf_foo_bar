
# 6.3 Class Attributes

# Release 0: Bring Santa to Life
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 
# (Santa has been working on being more inclusive.)
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") 
# as a parameter and prints "That was a good <type of cookie here>!" 
# An initialize method that prints "Initializing Santa instance ...".

class Santa

	def initialize
		p "Initializing Santa instance ..."
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!" 
	end
end


#Driver Code

claus = Santa.new
claus.speak
claus.eat_milk_and_cookies("snickerdoodle")