# say timeout
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1
tellraw @a[tag=wolf.acting] ["\u00a7c操作超时"]
execute if entity @a[tag=wolf.acting] run tellraw @a[tag=wolf.tip,gamemode=spectator] ["\u00a7c操作超时"]

execute if score wolf.event board matches 5 run function minecraft:twolf/control/job/wolf/timeout
execute if score wolf.event board matches 5 run return 0

execute unless score wolf.event board matches 11 unless score wolf.event board matches 12 as @a[tag=wolf.acting] at @s run function twolf/action/per/tpback
execute if score wolf.event board matches 11 run function minecraft:twolf/events/day/died_special
execute if score wolf.event board matches 12 as @a[tag=wolf.acting] run function minecraft:twolf/action/per/death/hunter/died
execute if score wolf.event board matches 12 run return 0
schedule function minecraft:twolf/events/next_event 2s