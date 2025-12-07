##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§c你掉入了虚空，淘汰了。\n"]
gamemode spectator @s
clear @s
tp @s 471 -25 316 -90 0
function tntwars/calcpeople


execute as @s[tag=tntwars.a] run tellraw @a[team=wait.tntwars] ["§a「队伍A」",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.a.player"},"color":"green"}]
execute as @s[tag=tntwars.b] run tellraw @a[team=wait.tntwars] ["§b「队伍B」",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.b.player"},"color":"green"}]
execute as @s[tag=tntwars.a] run tellraw @a[team=play.tntwars,tag=tntwars.a] ["§a你的队友 ",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.a.player"},"color":"green"}]
execute as @s[tag=tntwars.a] run tellraw @a[team=play.tntwars,tag=tntwars.b] ["§a「队伍A」",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.a.player"},"color":"green"}]
execute as @s[tag=tntwars.b] run tellraw @a[team=play.tntwars,tag=tntwars.b] ["§b你的队友 ",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.b.player"},"color":"green"}]
execute as @s[tag=tntwars.b] run tellraw @a[team=play.tntwars,tag=tntwars.a] ["§b「队伍B」",{"selector":"@s"},"§c 淘汰了。\n§6该队剩余玩家数量：",{"score":{"objective":"tick","name":"TNT.b.player"},"color":"green"}]

execute as @a[team=wait.tntwars] at @s run playsound entity.player.death player @s ~ ~ ~ 1 1 0
execute as @a[team=play.tntwars] at @s run playsound entity.player.death player @s ~ ~ ~ 1 1 0




