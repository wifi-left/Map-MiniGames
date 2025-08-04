##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute positioned 29 16 31 run tag @e[tag=wolf.tppoint,tag=!wolf.used,limit=1,sort=nearest] add wolf.sel
scoreboard players operation @e[tag=wolf.sel,limit=1] LRS_UUID = @s park.uuid
tag @e[tag=wolf.sel] add wolf.used
tag @e[tag=wolf.sel] remove wolf.knight
tag @s add wolf.sell
execute as @e[tag=wolf.sel] at @s run summon text_display ~ ~1.8 ~ {alignment:"center",billboard:"vertical",Tags:["wolf.nametags"],text:[{"selector":"@a[tag=wolf.sell]"}]}
execute as @e[tag=wolf.sel] at @s run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,NoGravity:1b,Invisible:true,ShowArms:true,NoBasePlate:true,DisabledSlots:2039583,Tags:["wolf.new","wolf.nametags"],Marker:true,Glowing:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1},legs:{id:"minecraft:leather_leggings",count:1},chest:{id:"minecraft:leather_chestplate",count:1},head:{id:"minecraft:player_head",count:1}}}
item modify entity @e[tag=wolf.new] armor.head gethead
tag @s remove wolf.sell
tag @e[tag=wolf.new] remove wolf.new
tag @e[tag=wolf.sel] remove wolf.sel

