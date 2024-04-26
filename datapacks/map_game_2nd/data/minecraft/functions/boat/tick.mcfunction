# execute as @a[team=golf,gamemode=adventure] at @s run kill @e[type=item,distance=0..5]

# title @a[team=boat,x=-71,y=134,z=547,distance=0..3] actionbar ["\u00a76您已进入 \u00a7b[神秘区域]"]
execute as @a[team=boat] at @s run kill @e[type=item,distance=0..5]
kill @e[type=item,nbt={Item:{tag:{boatItem:1b}}}]
kill @e[type=item,nbt={Item:{tag:{boatItem:2b}}}]
# title @a[team=boat,x=-43,y=134,z=196,distance=0..4] actionbar ["\u00a76您已进入 \u00a7a[Part 2 - 街道]"]
# title @a[team=boat,x=285,y=134,z=554,distance=0..5] actionbar ["\u00a76您已进入 \u00a7d[Part 3 - 隧道]"]
# title @a[team=boat,x=285,y=134,z=560,distance=0..5] actionbar ["\u00a76您已进入 \u00a7d[Part 3 - 隧道]"]
# title @a[team=boat,x=735,y=-61,z=582,distance=0..5] actionbar ["\u00a76您已进入 \u00a73[Part 4 - 地下桃园]"]

# 735 -61 582 
# boat.notinboat 玩家不在载具里

tag @a[tag=boat.notinboat] remove boat.notinboat
execute unless score boat.type board matches 4 run tag @a[team=boat] add boat.notinboat
execute as @a[team=boat] if predicate minecraft/boat/ifintheboat run tag @s remove boat.notinboat
execute unless score boat.type board matches 4 run execute as @a[team=boat,tag=!boat.notinboat] at @s run function boat/detectmyboat 

execute as @e[team=boat,type=!player] at @s if block ~ ~-1 ~ target run scoreboard players reset @s
execute as @e[team=boat,type=!player] at @s if block ~ ~-1 ~ target run kill @s

execute as @a[team=boat,tag=!boat.notinboat,gamemode=adventure] at @s if block ~ ~ ~ target run function boat/win
execute as @a[team=boat,tag=!boat.notinboat,gamemode=adventure] at @s if block ~ ~-2 ~ target run function boat/win
execute as @a[team=boat,tag=!boat.notinboat,gamemode=adventure] at @s if block ~ ~-1 ~ target run function boat/win

execute as @e[team=boat,type=!player] at @s if block ~ ~-1 ~ blue_ice run effect give @s speed 1 2 true
execute as @a[team=boat,tag=!boat.notinboat] at @s if block ~ ~-1 ~ blue_ice run effect give @s speed 1 2 true

# execute as @e[team=boat,type=!player] at @s if block ~ ~-1 ~ emerald_block run function boat/letplayergetrandomitem

# execute as @a[team=boat,tag=!boat.notinboat] at @s if block ~ ~-1 ~ emerald_block run function boat/ifgetrandomitem

# execute as @e[type=marker,tag=boat.trap,tag=trap1] at @s if entity @a[team=boat,distance=0..4] run function boat/trap/1/active
# execute as @e[type=marker,tag=boat.trap,tag=trap1] at @s run particle dolphin ~ ~ ~ 3 0 3 0 15
# execute as @e[type=marker,tag=boat.trap,tag=trap2] at @s if entity @a[team=boat,distance=0..4] run function boat/trap/2/active
# execute as @e[type=marker,tag=boat.trap,tag=trap2] at @s run particle flame ~ ~ ~ 3 0 3 0 15
# execute as @e[tag=boat.trap,scores={park.uuid=1..}] at @s run tp ~ ~-0.1 ~
# execute as @e[tag=boat.trap,scores={park.uuid=1..}] at @s run scoreboard players remove @s park.uuid 1