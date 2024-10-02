# 成功！
execute as @s run scoreboard players set @s temp 5000
execute as @s run scoreboard players operation @s temp -= @s golf.nowroundscore 
execute as @s run scoreboard players operation @s golf.score += @s temp
tellraw @s ["\u00a76你成功让 \u00a7bBall \u00a76进洞\u00a76。\u00a7e 分数 +",{"score":{"name": "@s","objective": "temp"},"color": "aqua"}]
scoreboard players reset @s temp

kill @e[type=zombie,tag=golf.ball]
execute as @e[type=experience_orb] at @s if block ~ ~-1 ~ magma_block run kill @s
function minecraft:golf/gaming/nextplayer
execute as @a[team=golf] at @s run playsound entity.player.levelup player @s ~ ~ ~ 3 0 1
