##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set touzi.health.a board 0
scoreboard players reset * touzi.count

scoreboard players set touzi.health.b board 0
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add touzi.health.a board 50
execute as @a[team=deskgame,gamemode=adventure] run scoreboard players add touzi.health.b board 50
scoreboard players set touzi.money.a board 0
scoreboard players set touzi.money.b board 0
kill @e[type=armor_stand,tag=desk.touzi.place]
kill @e[type=item_frame,tag=desk.touzi.show]
kill @e[type=text_display,tag=touzi.show.text]

data merge block -19 4 71 {front_text:{messages:['["\\u00a79队伍A\\u00a78 | \\u00a77金币 ",{"score":{"objective":"board","name":"touzi.money.a"},"color":"yellow"},"\\u00a76℗"]','["\\u00a74队伍B \\u00a78| \\u00a77金币 ",{"score":{"objective":"board","name":"touzi.money.b"},"color":"yellow"},"\\u00a76℗"]','["\\u00a79队伍A \\u00a78| \\u00a77生命 ",{"score":{"objective":"board","name":"touzi.health.a"},"color":"red"},"\\u00a7c♥"]','["\\u00a74队伍B \\u00a78| \\u00a77生命 ",{"score":{"objective":"board","name":"touzi.health.b"},"color":"red"},"\\u00a7c♥"]']}}

execute as @e[tag=touzi.text.money.a,type=marker] at @s run summon text_display ~ ~1.5 ~ {alignment:"center",billboard:"fixed",text:'["信息正在加载..."]',Tags:["touzi.show.text"]}
execute as @e[tag=touzi.text.health.a,type=marker] at @s run summon text_display ~ ~1.5 ~ {alignment:"center",billboard:"fixed",text:'["信息正在加载..."]',Tags:["touzi.show.text"]}
execute as @e[tag=touzi.text.money.b,type=marker] at @s run summon text_display ~ ~1.5 ~ {alignment:"center",billboard:"fixed",text:'["信息正在加载..."]',Tags:["touzi.show.text"]}
execute as @e[tag=touzi.text.health.b,type=marker] at @s run summon text_display ~ ~1.5 ~ {alignment:"center",billboard:"fixed",text:'["信息正在加载..."]',Tags:["touzi.show.text"]}
execute as @e[tag=touzi.text.health.b,type=marker] at @s as @e[distance=0..2,type=text_display] at @s run tp @s ~ ~ ~ -180 0
execute as @e[tag=touzi.text.money.b,type=marker] at @s as @e[distance=0..2,type=text_display] at @s run tp @s ~ ~ ~ -180 0


execute as @e[tag=touzi.text.money.a,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[0]

execute as @e[tag=touzi.text.money.b,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[1]

execute as @e[tag=touzi.text.health.a,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[2]

execute as @e[tag=touzi.text.health.b,type=marker] at @s as @e[distance=0..2,type=text_display] run data modify entity @s text set from block -19 4 71 front_text.messages[3]


execute as @e[tag=touzi.a,type=marker] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,NoGravity:1b,Invisible:true,DisabledSlots:1973790,Tags:["touzi.a","desk.touzi.place"],CustomNameVisible:1b,CustomName:'"\\u00a78(空)"',ShowArms:true}
execute as @e[tag=touzi.a,type=marker] at @s run summon minecraft:item_frame ~ ~0.5 ~ {Invulnerable:1b,Silent:1b,NoGravity:1b,Invisible:true,Fixed:1b,Tags:["touzi.a","desk.touzi.show"]}
execute as @e[tag=touzi.a,type=item_frame] at @s run tp @s ~ ~ ~ -180 90
execute as @e[tag=touzi.a,type=armor_stand] at @s run tp @s ~ ~ ~ -180 0
execute as @e[tag=touzi.b,type=marker] at @s run summon minecraft:armor_stand ~ ~-1 ~ {Invulnerable:1b,NoAI:1b,Silent:1b,NoGravity:1b,Invisible:true,DisabledSlots:1973790,Tags:["touzi.b","desk.touzi.place"],CustomNameVisible:1b,CustomName:'"\\u00a78(空)"',ShowArms:true}
execute as @e[tag=touzi.b,type=marker] at @s run summon minecraft:item_frame ~ ~0.5 ~ {Invulnerable:1b,Silent:1b,NoGravity:1b,Invisible:true,Fixed:1b,Tags:["touzi.b","desk.touzi.show"]}
execute as @e[tag=touzi.b,type=item_frame] at @s run tp @s ~ ~ ~ 0 -90

# /execute as @e[tag=desk.touzi.desktop] at @s run setblock ~ ~ ~ stone_bricks
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{desk_item:1}}}}]


scoreboard players set touzit.a.touzi1 board 1
scoreboard players set touzit.a.touzi2 board 0

scoreboard players set touzit.b.touzi1 board 1
scoreboard players set touzit.b.touzi2 board 0
