execute as @a[team=play.duel.blue] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @a[team=play.duel.yellow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1

fill -363 15 -78 -367 12 -74 air replace yellow_stained_glass

fill -267 15 -78 -263 12 -74 air replace blue_stained_glass

tellraw @a[team=play.duel.blue] ["\u00a7b笼子已被打开！"]
tellraw @a[team=play.duel.yellow] ["\u00a7b笼子已被打开！"]