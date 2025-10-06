##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute in airworld run kill @e[type=text_display,tag=hunger.chest.display]
execute in airworld as @e[type=minecraft:marker,tag=hunger.chest] at @s align xyz run summon text_display ~0.5 ~1 ~0.5 {billboard:"vertical",text:{text:"补给箱",color:gold,bold:true},Tags:["hunger.chest.display"],view_range:1}
execute in airworld as @e[type=minecraft:marker,tag=hunger.chest] at @s run data merge block ~ ~ ~ {Items:[]}

execute in airworld as @e[type=minecraft:marker,tag=hunger.chest] at @s run data merge block ~ ~ ~ {LootTable:""}
execute in airworld as @e[type=minecraft:marker,tag=hunger.chest] at @s run setblock ~ ~ ~ air replace
execute in airworld as @e[type=minecraft:marker,tag=hunger.chest] at @s run setblock ~ ~ ~ chest{CustomName:"\u00a7a\u00a7l补给箱",LootTable:"minecraft:hunger/chest"} replace

