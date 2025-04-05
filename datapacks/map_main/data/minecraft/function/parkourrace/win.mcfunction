gamemode spectator @s
tellraw @a[team=play.parkour] ["\n",{"selector":"@s"},"\u00a7a 完成了跑酷！\n"]
execute as @a[team=play.parkour] at @s run playsound minecraft:entity.player.levelup player @s
