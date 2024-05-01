##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n\u00a7c你掉入了虚空，淘汰了。\n"]
gamemode spectator @s
clear @s
tp @s 471 -25 316 -90 0
function tntwars/calcpeople


execute as @s[tag=tntwars.a] run tellraw @a[team=wait.tntwars] ["\u00a7a「队伍A」",{"selector":"@s"},"\u00a7c 淘汰了。\n\u00a76该队剩余玩家数量：",{"score":{"objective": "tick","name": "TNT.a.player"},"color": "green"}]
execute as @s[tag=tntwars.b] run tellraw @a[team=wait.tntwars] ["\u00a7b「队伍B」",{"selector":"@s"},"\u00a7c 淘汰了。\n\u00a76该队剩余玩家数量：",{"score":{"objective": "tick","name": "TNT.b.player"},"color": "green"}]
execute as @s[tag=tntwars.a] run tellraw @a[team=play.tntwars] ["\u00a7a「队伍A」",{"selector":"@s"},"\u00a7c 淘汰了。\n\u00a76该队剩余玩家数量：",{"score":{"objective": "tick","name": "TNT.a.player"},"color": "green"}]
execute as @s[tag=tntwars.b] run tellraw @a[team=play.tntwars] ["\u00a7b「队伍B」",{"selector":"@s"},"\u00a7c 淘汰了。\n\u00a76该队剩余玩家数量：",{"score":{"objective": "tick","name": "TNT.b.player"},"color": "green"}]

execute as @a[team=wait.tntwars] at @s run playsound entity.player.death player @s ~ ~ ~ 1 1 0
execute as @a[team=play.tntwars] at @s run playsound entity.player.death player @s ~ ~ ~ 1 1 0



