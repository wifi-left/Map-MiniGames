##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:golf/over/find_highest
gamemode spectator @a[team=golf,gamemode=!creative]
schedule function minecraft:golf/over/tp 5s
scoreboard players set golf.state state 5
kill @e[type=marker,tag=golf.spawn]
bossbar set minecraft:golf name ["\u00a7c游戏结束，5s后返回。"]
kill @e[type=!player,tag=golf.ball]

kill @e[tag=golf.start]
kill @e[tag=golf.ballstart]