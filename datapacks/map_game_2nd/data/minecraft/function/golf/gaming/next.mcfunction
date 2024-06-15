##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
kill @e[type=zombie,tag=golf.ball]
gamemode spectator @a[team=golf,gamemode=adventure]
execute if entity @a[team=golf,tag=golf.waitshoot] as @a[team=golf,tag=golf.waitshoot,limit=1,sort=nearest] run function golf/gaming/nextplayer
execute unless entity @a[team=golf,tag=golf.waitshoot] run function golf/gaming/nextmap
execute as @a[team=golf] at @s run playsound entity.player.levelup player @s ~ ~ ~ 3 1 1

