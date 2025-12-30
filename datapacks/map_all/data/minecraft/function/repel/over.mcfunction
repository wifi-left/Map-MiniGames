##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set repel state 0
execute as @a[team=play.repel,gamemode=adventure] run scoreboard players operation @s number = cnt.repel number
execute as @a[team=play.repel,gamemode=adventure] run scoreboard players add cnt.repel number 1
tellraw @a ["§6§l[GAMEOVER] §eRepeling War§a 结束了。胜利者: ",{"selector":"@a[team=play.repel,gamemode=adventure]"},"\n §b死亡顺序:"]
execute as @a[team=play.repel] run tellraw @a[team=play.repel] ["§a ",{"score":{"objective":"number","name":"@s"},"color":"red"},"§e -> ",{"selector":"@s"}]
title @a[team=play.repel,gamemode=adventure] title ["\u00a76你赢了！"]
title @a[team=play.repel,gamemode=spectator] title ["\u00a7c\u00a7l游戏结束!"]
execute as @a[team=play.repel,gamemode=adventure,tag=play.total] run function minecraft:small_games/total/win_score {score:3}
execute if entity @a[team=play.repel,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=play.repel,gamemode=!creative] run function repel/join
schedule clear minecraft:repel/givethings
#/summon armor_stand ~ ~-1.98 ~ {NoGravity:1b,Invisible:1b,Passengers:[{Tags:["block_entity"],Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,id:"minecraft:falling_block",Time:-1000000,DropItem:true,BlockState:{Name:"orange_wool"}}]}
#minecraft:orange_stained_glass

