Team_New_York_Aquatics = {
        swimmer_1: {  
                name: 'Nan',
                aquatic_focus: {
                        pool: "yes",
                        open_water: "yes",
                        water_polo: "no",
                        diving: "no",
                        synchronized_swimming: "maybe"
                },
                stroke: {
                        fly: "beginner",
                        back: "intermediate",
                        breast: "hopeless",
                        free: "intermediate"
                },
                pools: [
                    "John Jay", 
                    "Baruch",
                    "Hostos",
                    "LIU",
                ]
        },
        swimmer_2: {  
                name: 'Bob',
                aquatic_focus: {
                        pool: "yes",
                        open_water: "no",
                        water_polo: "yes",
                        diving: "no",
                        synchronized_swimming: "no"
                },
                stroke: {
                        fly: "advanced",
                        back: "intermediate",
                        breast: "intermediate",
                        free: "advanced"
                },
                pools: [
                    "John Jay"
                ]
        },
        coach_1: {  
                name: 'Scott',
                aquatic_focus: {
                        pool: "yes",
                        open_water: "yes",
                        water_polo: "no",
                        diving: "no",
                        synchronized_swimming: "no"
                },
                stroke: {
                        fly: "advanced",
                        back: "advanced",
                        breast: "olympian",
                        free: "advanced"
                },
                pools:[
                        "John Jay", 
                        "Baruch",
                        "Hostos",
                        "LIU"
                ]
        },
        coach_2: {  
            name: 'Alex',
                aquatic_focus: {
                        pool: "yes",
                        open_water: "no",
                        water_polo: "yes",
                        diving: "no",
                        synchronized_swimming: "no"
                },
                stroke: {
                        fly: "advanced",
                        back: "intermediate",
                        breast: "intermediate",
                        free: "advanced"
                },
                pools: [
                        "John Jay", 
                        "YMCA"
                ]
        },
        board_1: {  
            name: 'Croft',
                aquatic_focus: {
                        pool: "yes",
                        open_water: "no",
                        water_polo: "no",
                        diving: "yes",
                        synchronized_swimming: "no"
            },
            stroke: {
                        fly:"",
                        back: "intermediate",
                        breast: "",
                        free: "advanced"
            },
            pools: [
                    "Flushing_Meadows" 
            ]
        }

}

puts "Which strokes does the board member swim, and what is his skill level?"
p Team_New_York_Aquatics[:board_1][:stroke]

puts "Which pools does Nan attend?"
p Team_New_York_Aquatics[:swimmer_1][:pools]

puts "Does the water-polo coach enjoys diving?"
p Team_New_York_Aquatics[:coach_2][:aquatic_focus][:diving]

puts "Where does the head-coach Scott mostly instruct?"
p Team_New_York_Aquatics[:coach_1][:pools][0]

puts " What is Bob's breast stroke skill level?"
p Team_New_York_Aquatics[:swimmer_2][:stroke][:breast]

puts " Coach Alex starts coaching at Hostos and drops the YMCA"
p Team_New_York_Aquatics[:coach_2][:pools][1].replace('Hostos')

puts " Croft starts swimming butterfly."
p Team_New_York_Aquatics[:board_1][:stroke][:fly] = "beginner"



