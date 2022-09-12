execute as @a[team=play.duel.blue] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @a[team=play.duel.yellow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1

fill -110 66 -65 -106 71 -69 air replace glass
fill -106 66 -107 -110 70 -111 air replace glass

tellraw @a[team=play.duel.blue] ["\u00a7b笼子已被打开！"]
tellraw @a[team=play.duel.yellow] ["\u00a7b笼子已被打开！"]