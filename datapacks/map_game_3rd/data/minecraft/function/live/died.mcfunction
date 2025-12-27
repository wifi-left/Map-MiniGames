##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["§c对不起，你被抓到了！"]
gamemode spectator @s
team join live @s
scoreboard players set live.player tick 0
execute as @a[team=live,gamemode=adventure] run scoreboard players add live.player tick 1
execute if score live.player tick matches 0 run function minecraft:live/player_gain_coin {count:3,reason:"最后一个死亡"}
execute if score live.player tick matches 1 run function minecraft:live/player_gain_coin {count:2,reason:"倒数第二死亡"}
execute if score live.player tick matches 2 run function minecraft:live/player_gain_coin {count:1,reason:"倒数第三死亡"}
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
tellraw @a[team=live] [{"selector":"@s"},"§c 被抓到了！"]
tellraw @a[team=live.killer] [{"selector":"@s"},"§c 被抓到了！"]