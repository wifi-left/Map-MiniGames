# t says
execute if score t_says.say board matches 0 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 10 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 20 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 30 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 40 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 50 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 60 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 70 as @a[team=t_says] at @s run playsound block.note_block.hat player @s ~ ~ ~ 1 1 1
execute if score t_says.say board matches 80 as @a[team=t_says] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1

execute if score t_says.say board matches 0 if score t_says.type board matches 1 run title @a[team=t_says] times 0 60 0
execute if score t_says.say board matches 0 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T....",color:green}]
execute if score t_says.say board matches 10 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏..",color:green}]
execute if score t_says.say board matches 20 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说",color:green}]
execute if score t_says.say board matches 25 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说.",color:green}]
execute if score t_says.say board matches 30 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说..",color:green}]
execute if score t_says.say board matches 35 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说...",color:green}]
execute if score t_says.say board matches 40 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说..",color:green}]
execute if score t_says.say board matches 45 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说.",color:green}]
execute if score t_says.say board matches 50 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说",color:green}]
execute if score t_says.say board matches 55 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说.",color:green}]
execute if score t_says.say board matches 60 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说..",color:green}]
execute if score t_says.say board matches 65 if score t_says.type board matches 1 run title @a[team=t_says] title [{text:"T氏说...",color:green}]

execute if score t_says.say board matches 75 run title @a[team=t_says] reset

execute if score t_says.say board matches 80 run tellraw @a[team=t_says] ["\n",{text:"动作：",color:gold},{nbt:"t_says.msg",storage:"minecraft:temp",color:aqua,interpret:true},"\n"]
execute if score t_says.say board matches 80 run title @a[team=t_says] title [{nbt:"t_says.msg",storage:"minecraft:temp",color:aqua,interpret:true}]



scoreboard players add t_says.say board 1
