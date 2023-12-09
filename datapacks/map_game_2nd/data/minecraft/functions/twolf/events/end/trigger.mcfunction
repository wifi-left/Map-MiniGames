function twolf/overdetect
execute if score twolf.state state matches 3 run return 0

tellraw @a[tag=wolf.tip] ["\u00a77即将进入下一个夜晚..."]
clear @a[tag=wolf.tip]
scoreboard players set wolf.event board 0
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board 4

schedule clear minecraft:twolf/events/next_event
schedule clear minecraft:twolf/events/1/new_round