kill @e[type=zombie,tag=golf.ball]
gamemode spectator @a[team=golf,gamemode=adventure]
# execute if entity @a[team=golf,tag=golf.waitshoot] as @a[team=golf,tag=golf.waitshoot,limit=1,sort=nearest] run function golf/gaming/nextplayer
execute as @e[type=marker,tag=golf.spawn] at @s run function golf/gaming/ballspawn
tellraw @a[team=golf] ["\n\u00a7c   击球失败！球出界！\n"]
title @a[team=golf,gamemode=adventure] title ["\u00a7c击球失败！"]
title @a[team=golf,gamemode=adventure] subtitle ["\u00a7b球出界了，所以你失败了。"]
execute as @a[team=golf] at @s run playsound entity.player.levelup player @s ~ ~ ~ 3 1 1
