##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set wolf.time board -1
scoreboard players set wolf.ttime board -1
execute as @a[tag=wolf.acting] run function minecraft:twolf/action/per/tpback
# tellraw @s[tag=wolf.tip] ["\u00a7c请闭眼。"]
# title @s[tag=wolf.tip] title [""]
# title @s[tag=wolf.tip] subtitle ["\u00a7f请闭眼。"]
schedule function minecraft:twolf/events/next_event 4s
