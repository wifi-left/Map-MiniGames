##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a ["!",{"score":{"name": "wolf.time","objective": "board"}},":",{"score":{"name": "wolf.ttime","objective": "board"}},"[]",{"score":{"name": "wolf.event","objective": "board"}},":",{"score":{"name": "wolf.ttime","objective": "board"}}]
scoreboard players set wolf.return board 0
tag @a remove wolf.acting
schedule clear minecraft:twolf/events/next_event
function minecraft:twolf/action/resethighlight

scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1

clear @a[tag=wolf.tip]

# execute unless score wolf.failed state matches 1 if score wolf.event board matches 2..7 run tellraw @a[tag=wolf.tip] ["\u00a7c请闭眼。"]

# 14 结束
execute if score wolf.event board matches 100.. run function minecraft:twolf/over/tpback
execute if score twolf.state state matches 3 unless score wolf.event board matches 100.. run function minecraft:twolf/over/tpback
execute if score twolf.state state matches 3 run return 0
execute if score wolf.return board matches 1.. run return 0

# 新一局 9
execute unless score twolf.state state matches 3 if score wolf.event board matches 18.. unless score twolf.state state matches 3 run function minecraft:twolf/events/end/trigger

execute if score wolf.return board matches 1.. run return 0
# 白天自爆身份技能

# 白天 8 9 10
execute unless score twolf.state state matches 3 if score wolf.event board matches 10 run function minecraft:twolf/events/day/choose_leaveaway
execute unless score twolf.state state matches 3 if score wolf.event board matches 9 run function minecraft:twolf/events/day/start_talking
execute unless score twolf.state state matches 3 if score wolf.event board matches 8 run function minecraft:twolf/events/day/show_death
execute unless score twolf.state state matches 3 if score wolf.event board matches 7 run function minecraft:twolf/events/day/trigger

# 预言家 7
execute if score wolf.event board matches 6 run function minecraft:twolf/events/6/trigger

# 女巫 6
execute if score wolf.event board matches 5 run function minecraft:twolf/events/5/trigger

# 狼 5
execute if score wolf.event board matches 4 run function minecraft:twolf/events/4/trigger

# 纵火犯 4
execute if score wolf.event board matches 3 run function minecraft:twolf/events/3/trigger


# 守卫 3
execute if score wolf.event board matches 2 run function minecraft:twolf/events/2/trigger




# 丘比特 1/2
execute if score wolf.event board matches 0 run function minecraft:twolf/events/1/trigger

execute if score wolf.event board matches 1 run function minecraft:twolf/events/job/cupid2
scoreboard players reset @a LRS_CS
tag @a remove wolf.selected

# say 1


# tellraw @a ["@",{"score":{"name": "wolf.time","objective": "board"}},":",{"score":{"name": "wolf.ttime","objective": "board"}},"[]",{"score":{"name": "wolf.event","objective": "board"}},":",{"score":{"name": "wolf.ttime","objective": "board"}}]

