scoreboard players set color.state state 1
execute as @a[team=play.color] at @s run playsound entity.player.levelup player @s
tellraw @a[team=wait.color] ["\u00a7a正在检测颜色！"]
tellraw @a[team=play.color] ["\u00a7a正在检测颜色！"]

execute as @a[team=play.color,gamemode=adventure] at @s unless blocks ~ ~-1 ~ ~ ~-1 ~ -52 35 64 all run function color/died
tellraw @a[team=wait.color] ["\u00a77检测完毕！"]
tellraw @a[team=play.color] ["\u00a77检测完毕！"]
schedule function minecraft:color/summon 3s