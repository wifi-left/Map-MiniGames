##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[scores={hp.hurt=-1..},team=play.hotpot.k] at @s run function minecraft:hotpotever/detect_change_to

tag @a[tag=hp.flag] remove hp.flag
scoreboard players reset @a hp.hurt
# scoreboard players reset @a hp.gethurt
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{hotpot:1}}}}]