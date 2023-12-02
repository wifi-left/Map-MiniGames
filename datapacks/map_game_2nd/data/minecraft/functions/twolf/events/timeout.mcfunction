# say timeout
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1
tellraw @a[tag=wolf.acting] ["\u00a7c操作超时"]
tellraw @a[tag=wolf.tip,gamemode=spectator] ["\u00a7c操作超时"]

execute if score wolf.event board matches 5 run function minecraft:twolf/control/job/wolf/timeout
execute if score wolf.event board matches 5 run return 0

execute as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback

schedule function minecraft:twolf/events/next_event 4s