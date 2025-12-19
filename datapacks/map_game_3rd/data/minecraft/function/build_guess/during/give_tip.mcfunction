execute if data storage minecraft:temp {build_guess:{length:1}} run scoreboard players set random temp 1
execute store result score random temp if data storage minecraft:temp {build_guess:{length:2}} run random value 1..2
execute store result score random temp if data storage minecraft:temp {build_guess:{length:3}} run random value 1..3
execute store result score random temp if data storage minecraft:temp {build_guess:{length:4}} run random value 1..4
execute store result score random temp if data storage minecraft:temp {build_guess:{length:5}} run random value 1..5
execute store result score random temp if data storage minecraft:temp {build_guess:{length:6}} run random value 1..6

data modify storage minecraft:temp build_guess_temp.mid set value ""
data modify storage minecraft:temp build_guess_temp.before set value ""
data modify storage minecraft:temp build_guess_temp.after set value ""


execute if score random temp matches 1 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 0 1
execute if score random temp matches 2 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 1 2
execute if score random temp matches 3 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 2 3
execute if score random temp matches 4 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 3 4
execute if score random temp matches 5 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 4 5
execute if score random temp matches 6 run data modify storage minecraft:temp build_guess_temp.mid set string storage minecraft:temp build_guess.word 5 6
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:2}} run data modify storage minecraft:temp build_guess_temp.before set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:2}} run data modify storage minecraft:temp build_guess_temp.after set value " _"
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:2}} run data modify storage minecraft:temp build_guess_temp.before set value "_ "
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:2}} run data modify storage minecraft:temp build_guess_temp.after set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.before set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _"
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.before set value "_ "
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.after set value " _"
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ "
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:3}} run data modify storage minecraft:temp build_guess_temp.after set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.before set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _"
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.before set value "_ "
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _"
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ "
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.after set value " _"
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ "
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:4}} run data modify storage minecraft:temp build_guess_temp.after set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.before set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _ _"
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.before set value "_ "
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _"
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ "
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _"
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ "
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.after set value " _"
execute if score random temp matches 5 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ _ "
execute if score random temp matches 5 if data storage minecraft:temp {build_guess:{length:5}} run data modify storage minecraft:temp build_guess_temp.after set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value ""
execute if score random temp matches 1 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _ _ _"
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value "_ "
execute if score random temp matches 2 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _ _"
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ "
execute if score random temp matches 3 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _ _"
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ "
execute if score random temp matches 4 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value " _ _"
execute if score random temp matches 5 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ _ "
execute if score random temp matches 5 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value " _"
execute if score random temp matches 6 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.before set value "_ _ _ _ _ "
execute if score random temp matches 6 if data storage minecraft:temp {build_guess:{length:6}} run data modify storage minecraft:temp build_guess_temp.after set value ""

function minecraft:build_guess/during/contact_word with storage minecraft:temp build_guess_temp