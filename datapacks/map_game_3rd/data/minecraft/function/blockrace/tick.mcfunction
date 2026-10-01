execute in minecraft:airworld positioned 164 -40 225 as @a[gamemode=!spectator,gamemode=!creative,distance=..2,team=blockrace] at @s run function minecraft:blockrace/died
# execute in minecraft:airworld as @a[gamemode=adventure,team=blockrace] at @s 死亡检测 run function minecraft:blockrace/died
execute in minecraft:airworld as @a[gamemode=survival,team=blockrace] at @s if block ~ ~-1 ~ test_block[mode=accept] run function minecraft:blockrace/finish
# execute in minecraft:airworld as @a[gamemode=adventure,team=blockrace] at @s run kill @e[type=item,distance=..5]