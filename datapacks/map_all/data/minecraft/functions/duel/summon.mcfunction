execute as @a[team=play.duel.blue] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
execute as @a[team=play.duel.yellow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1

fill -348 12 -78 -352 15 -74 air replace yellow_stained_glass
# fill -351 12 -75 -349 14 -77 air
fill -278 12 -78 -282 15 -74 air replace blue_stained_glass

tellraw @a[team=play.duel.blue] ["\u00a7b笼子已被打开！"]
tellraw @a[team=play.duel.yellow] ["\u00a7b笼子已被打开！"]