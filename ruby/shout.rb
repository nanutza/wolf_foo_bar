# 6.4 Modules
# release 1 - Writing a Shout Module

# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("NO")
# puts Shout.yelling_happily("YES")


# Release 3: Convert a Standalone Module to a Mixin

module Shout

 def yell_angrily(words)
   puts words + "!!!" + " :("
 end
   def yelling_happily(words)
   puts words + "!   WoooHooo!!!" + " :)"
 end
end


class Angry_Neighbor
 include Shout
end
class Happy_Kids
 include Shout
end

#driver-code
grouchy_man = Angry_Neighbor.new
grouchy_man.yell_angrily("You broke my window with you baseball")
kids = Happy_Kids.new
kids.yelling_happily("We hit a homerun! We won")
