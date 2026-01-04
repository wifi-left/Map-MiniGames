scoreboard players remove @s board 1
scoreboard players operation temp temp = @s board
scoreboard players set 10 board 10
scoreboard players operation temp temp %= 10 board
execute if score temp temp matches 0 run playsound entity.sheep.ambient block @a[distance=..30] ~ ~ ~ 1 1 0

scoreboard players operation temp temp = @s board
scoreboard players set 20 board 20
scoreboard players operation temp temp %= 20 board
execute if score temp temp matches 0 as @s[tag=sheepwars.blachole] at @s as @a[distance=..5] run rotate @s facing ~ ~ ~
execute as @s[tag=sheepwars.blachole] at @s run particle dust{color:0,scale:1} ~ ~ ~ 5 5 5 1 10 normal


scoreboard players set 40 board 40
scoreboard players operation temp temp %= 40 board
execute if score temp temp matches 0 as @s[tag=sheepwars.health] at @s run effect give @a[distance=..5] regeneration 2 3 true
execute as @s[tag=sheepwars.health] at @s run particle dust{color:16711888,scale:1} ~ ~ ~ 5 5 5 1 10 normal
execute as @s[tag=sheepwars.earthquake] at @s run rotate @s ~10 0
execute as @s[tag=sheepwars.earthquake] at @s run summon tnt ^ ^ ^3 {fuse:0,explosion_power:1.5}
execute as @s[tag=sheepwars.earthquake] at @s run particle dust{color:0,scale:1} ~ ~ ~ 5 5 5 1 10 normal

execute if score @s board matches ..0 run function minecraft:sheepwars/use_item/target/trigger_countdown