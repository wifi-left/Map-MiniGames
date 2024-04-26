execute if score duel.clear state matches 0 run function duel/reset
forceload add -251 -83 -379 -69
scoreboard players operation §e战桥黄队得分 gg.duel = score.yellow tick
scoreboard players operation §9战桥蓝队得分 gg.duel = score.blue tick
# forceload add -110 -65
fill -348 12 -78 -352 15 -74 yellow_stained_glass
fill -351 12 -75 -349 14 -77 air
fill -278 12 -78 -282 15 -74 blue_stained_glass
fill -281 12 -75 -279 14 -77 air
tp @a[team=play.duel.yellow] -350 12 -76 -90 0
tp @a[team=play.duel.blue] -280 12 -76 90 0
execute as @a[team=play.duel.blue] at @s run function duel/item
execute as @a[team=play.duel.yellow] at @s run function duel/item
tellraw @a[team=play.duel.yellow] ["\u00a7a笼子将在5秒后打开！"]
tellraw @a[team=play.duel.blue] ["\u00a7a笼子将在5秒后打开！"]
schedule function duel/summon 5s
execute as @a[team=play.duel.blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @a[team=play.duel.yellow] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1

forceload remove -251 -83 -379 -69
