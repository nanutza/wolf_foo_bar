# Write a Ruby program that uses persistent data to make your life better,
# or makes someone else's life better.
# Hold yourself accountable for coming up with an idea, 
# building something amazing, and learning a lot
# I Did the thing 1,000,000.0 pts - Object Relational Mapping (ORM): SQL + RUBY

# require gems
require 'sqlite3'
require 'faker'
require_relative 'quote'


# create SQLite3 database
db = SQLite3::Database.new("inspiration.db")

# CREATE input and output Tables
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS personas(
    id INTEGER PRIMARY KEY,
    pokemon VARCHAR(255),
    goT_name VARCHAR(255),
    goT_house VARCHAR(255)
  )
SQL

create_out_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS daily(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    pokemon VARCHAR(255),
    goT_name VARCHAR(255),
    goT_house VARCHAR(255),
    quote VARCHAR(255),
    author VARCHAR(255)
  )
SQL

# create a magical characters table (if it's not there already) and output table
db.execute(create_table_cmd)
db.execute(create_out_table_cmd)


def create_persona(db, pokemon, goT_name, goT_house)
  	db.execute("INSERT INTO personas (pokemon, goT_name, goT_house) VALUES (?, ?, ?)", [pokemon, goT_name, goT_house])
end

def create_name_idx(name)
		letter_count = name.length
			name_idx = 0
				letter_count.times do |char|
					name_idx += name[char].ord 
				end
		name_idx
end

# POPULATE DATABASE - commented out since enough data
# 1000.times do
#   create_persona(db, Faker::Pokemon.name, Faker::GameOfThrones.character, Faker::GameOfThrones.house)
# end


#USER INTERFACE
puts "Welcome to Inspiration Daily!  What is your Name?"
	name = gets.chomp
	name_idx = create_name_idx(name)

persona = db.execute("SELECT * FROM personas WHERE id = #{name_idx}")

	puts "\n Your Character is #{persona[0][2]}, and you will defeat the house #{persona[0][3]}."
	puts " You will successfully win the Game of Thrones assisted by the pokemon: #{persona[0][1]} !"
	puts "\nCarpe Diem!  Your inspirational message of the day:\n\n"
	index = rand(0..22)
	puts "#{QUOTES[index][:quote]} \nby #{QUOTES[index][:name]}"

# add to daily output database
db.execute("INSERT INTO daily (name, pokemon, goT_name, goT_house, quote, author) 
	VALUES (?, ?, ?, ?, ?, ?)",[name, persona[0][1], persona[0][2], persona[0][3], QUOTES[index][:quote], QUOTES[index][:name] ])







