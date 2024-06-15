##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tag @a[nbt={Dimension:"minecraft:the_nether"},gamemode=!creative,team=play.sur] add sur.needtp
tag @a[nbt={Dimension:"minecraft:the_nether"},gamemode=!creative,team=play.sur.zom] add sur.needtp
tag @a[nbt={Dimension:"minecraft:the_end"},gamemode=!creative,team=play.sur] add sur.needtp
tag @a[nbt={Dimension:"minecraft:the_end"},gamemode=!creative,team=play.sur.zom] add sur.needtp
tellraw @a[tag=sur.needtp] ["\n\u00a7c   进入地狱是禁止的事情！\n"]
execute as @a[tag=sur.needtp] in airworld run tp @s @e[limit=1,sort=random,tag=sur.tp,type=marker]
tag @a remove sur.needtp

function compasstrack:tick
