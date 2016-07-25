# How might you design a Puppy class? 
# What sorts of characteristics and behavior might a Puppy class involve? 
# Using a format similar to the one we used for Eyelashus Adorableus, 
# come up with some characteristics and behavior for a Puppy class. 
# Use comments to add your class design


# PUPPY SPECIES----------------------
# Caninus adorabilis

# CHARACTERISTICS--------------------
# Size: varies
# Paws: 4
# Cute: yes
# Nose: moist
# Tail: mostly
# Fur_color: varies
# Name: varies

# BEHAVIOR---------------------------
# Bark
# Run
# Fetch
# Dig 

class Puppy

	def initialize
		puts "Initializing puppy instance"
	end

	def fetch(toy)
	p "The puppy fetches the #{toy}"
	end
	
end


# Driver Code
ramen = Puppy.new
dubu = Puppy.new

p ramen.class
ramen.fetch("ball")
p ramen == dubu
dubu.instance_of?(Puppy)

