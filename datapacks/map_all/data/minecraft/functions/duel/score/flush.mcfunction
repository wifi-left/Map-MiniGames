scoreboard players operation §e战桥黄队得分 gg.duel = score.yellow tick
scoreboard players operation §9战桥蓝队得分 gg.duel = score.blue tick
fill -110 66 -65 -106 71 -69 glass outline
fill -106 66 -107 -110 70 -111 glass outline
tp @a[team=play.duel.yellow] -108 67 -109 0 0
tp @a[team=play.duel.blue] -108 67 -67 180 0
execute as @a[team=play.duel.blue] at @s run function duel/item
execute as @a[team=play.duel.yellow] at @s run function duel/item
tellraw @a[team=play.duel.yellow] ["\u00a7a笼子将在5秒后打开！"]
tellraw @a[team=play.duel.blue] ["\u00a7a笼子将在5秒后打开！"]
schedule function duel/summon 5s
execute as @a[team=play.duel.blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @a[team=play.duel.yellow] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
