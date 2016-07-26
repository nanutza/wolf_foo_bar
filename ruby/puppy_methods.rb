#6.2 Mandatory Pairing: Instance Methods
# Release 0 and 1

class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
  p "The puppy fetches the #{toy}"
  end
  
  def speak(int)
    int.times {puts "Woof!"}
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_years = human_years * 7
  end
  
  def begs(minutes,treat)
    minutes.times {puts "*begs for #{treat} for one minute*"}
  end
end

# Driver Code
ramen = Puppy.new
dubu = Puppy.new

p ramen.class
ramen.fetch("ball")
p ramen == dubu
dubu.instance_of?(Puppy)

ramen.speak(3)
ramen.roll_over
puts "Dubu is #{dubu.dog_years(4)} dog years old."

dubu.begs(2, "grapes")

#Release 2 - Pairing with Jeff Fichtner
class Kitty
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def speak(reason)
    if reason == "intruder"
      puts "*Hisses*"
    elsif reason == "mom"
      puts "*Purrs*"
    else
      puts "*Cries*"
    end
    return
  end

  def hide(spot)
    p "#{@name} hides in the #{spot}."
  end
end

#Driver Code

marcello = Kitty.new("Marcello")
mimi = Kitty.new("Mimi")

mimi.hide("closet")
marcello.speak("mom")
mimi.speak("mailman")
marcello.speak("intruder")

kitty_array = []
	i = 0
		until i == 50
			name = [*('a'..'z')].sample.to_s.capitalize + ['a', 'e', 'i', 'o', 'u'].sample.to_s + [*('a'..'z')].sample.to_s
			kitty_array << Kitty.new(name)
		 	i += 1
		end

kitty_array.each do |kitty|
  print "New kitty: #{kitty.name}  "
  kitty.speak(["mom","mailman","intruder"].sample)
end


# Release 2 - Pairing with Keni Mannah Kallon
class Baseball_Player
  def initialize
    print "Created new player.  "
  end

  def era(runs, innings)
    avg =(runs/innings.to_f * 9).round(2)
    print "ERA is #{avg}.  "
    avg
  end

  def home_run?(distance)
    if distance >= 400
      puts "It's a homerun of #{distance} feet!  "
      true
    else
      puts "It's not a home run: only #{distance} feet.  "
      false
    end
  end

end

#DRIVER CODE
pitcher = Baseball_Player.new
hitter = Baseball_Player.new
p pitcher.era(5,7)

p hitter.home_run?(300)

players =[]

50.times do
  |x| players[x] = Baseball_Player.new
  players[x].era(rand(10),rand(1..9))
  players[x].home_run?(rand(500))

end


