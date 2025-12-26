##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if entity @a[tag=merchant.player] run return run function minecraft:small_games/total/spec_failed

clear @s
execute in overworld run tp @s 286 90 139 0 0
team join wait.total @s
scoreboard players set wait.player tick 0
execute as @a[team=wait.total,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=!wait.total] ["§a§l[MESSAGE] ",{"selector":"@s"},"§7 已加入 ",{"text":"小游戏派对","color":"#afd3ff","bold":true}," §7!"]
tellraw @a[team=wait.total] ["§6 > ",{"selector":"@s"},"§2 已加入。 §b(",{"score":{"objective":"tick","name":"wait.player"},"color":"yellow"}," §ePeople§b)"]
execute in overworld if score gametotal state matches 1.. as @s run function small_games/total/spec

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip

