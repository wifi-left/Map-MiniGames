##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# boat.rounds
tellraw @a[team=boat] [""]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run tellraw @a[team=boat] [{"selector":"@s"},"§6 是§a第",{"score":{"name":"@s","objective":"boat.rounds"},"color":"aqua"},"§a名"]
tellraw @a[team=boat] [""]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run tellraw @s ["\n§7你是§a第",{"score":{"name":"@s","objective":"boat.rounds"},"color":"aqua"},"§a名§7。\n"]
execute as @a[team=boat] at @s run title @s title ["\u00a76\u00a7l游戏结束"]
execute as @a[team=boat,gamemode=adventure] at @s run title @s subtitle ["\u00a77你并未完成比赛"]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run title @s subtitle ["\u00a7a你是第",{"score":{"name": "@s","objective": "boat.rounds"},"color":"aqua"},"\u00a7a名\u00a77"]


