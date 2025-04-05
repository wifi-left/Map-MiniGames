# gamemode spectator @s
tellraw @s ["\u00a7c很抱歉，游戏已经开始！"]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 1 1
gamemode spectator @s
tp @s @r[team=chestgame,gamemode=adventure,distance=10..]
