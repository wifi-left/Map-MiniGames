# boat.rounds
tellraw @a[team=boat] [""]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run tellraw @a[team=boat] [{"selector":"@s"},"\u00a76 是\u00a7a第",{"score":{"name": "@s","objective": "boat.rounds"},"color":"aqua"},"\u00a7a名"]
tellraw @a[team=boat] [""]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run tellraw @s ["\n\u00a77你是\u00a7a第",{"score":{"name": "@s","objective": "boat.rounds"},"color":"aqua"},"\u00a7a名\u00a77。\n"]
execute as @a[team=boat] at @s run title @s title ["\u00a76\u00a7l游戏结束"]
execute as @a[team=boat,gamemode=adventure] at @s run title @s subtitle ["\u00a77你并未完成比赛"]
execute as @a[team=boat,gamemode=spectator,scores={boat.rounds=1..}] at @s run title @s subtitle ["\u00a7a你是第",{"score":{"name": "@s","objective": "boat.rounds"},"color":"aqua"},"\u00a7a名\u00a77"]
