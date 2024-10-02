##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=zombie,tag=golf.ball]
# gamemode spectator @a[team=golf,gamemode=adventure]
# execute if entity @a[team=golf,tag=golf.waitshoot] as @a[team=golf,tag=golf.waitshoot,limit=1,sort=nearest] run function golf/gaming/nextplayer
execute in golfworld positioned -91 -61 40 run function golf/gaming/ballspawn
tellraw @a[team=golf] ["\n\u00a7c   击球失败！\n"]
title @a[team=golf,gamemode=adventure] title ["\u00a7c击球失败！"]
title @a[team=golf,gamemode=adventure] subtitle ["\u00a7b再接再厉！"]
execute as @a[team=golf] at @s run playsound entity.player.levelup player @s ~ ~ ~ 3 1 1
execute if score golf.set.resetscore state matches 1 run scoreboard players set @s golf.nowroundscore 0

execute as @e[type=experience_orb] at @s if block ~ ~-1 ~ magma_block run kill @s
