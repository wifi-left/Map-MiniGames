##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 成功！
execute as @s run scoreboard players set @s temp 5000
execute as @s run scoreboard players operation @s temp -= @s golf.nowroundscore
execute as @s run scoreboard players operation @s golf.score += @s temp
tellraw @s ["§6你成功让 §bBall §6进洞§6。§e 分数 +",{"score":{"name":"@s","objective":"temp"},"color":"aqua"}]
scoreboard players reset @s temp

kill @e[type=zombie,tag=golf.ball]
execute as @e[type=experience_orb] at @s if block ~ ~-1 ~ magma_block run kill @s
function minecraft:golf/gaming/nextplayer
execute as @a[team=golf] at @s run playsound entity.player.levelup player @s ~ ~ ~ 3 0 1

