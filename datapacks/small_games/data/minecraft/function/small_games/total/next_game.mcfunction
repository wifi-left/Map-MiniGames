tag @a remove total.sel.a
tag @a remove total.sel.b

bossbar set surgame:time players
bossbar set minecraft:battle players
bossbar set minecraft:boom players
bossbar set minigames:bedwars players
bossbar set minecraft:golf players
bossbar set minecraft:hideseek players
bossbar set minecraft:hideseek2 players
bossbar set minecraft:live players
# bossbar set minecraft: players
tag @a[tag=play.total] remove total.sel.a
tag @a[tag=play.total] remove total.sel.b
tag @a[tag=play.total] remove surback
tag @a[tag=play.total] remove tmp
tag @a[tag=play.total] remove bw.player

clear @a[tag=play.total]
effect clear @a[tag=play.total]
effect give @a[tag=play.total] instant_health 2 25 true

gamemode spectator @a[tag=play.total]

execute if entity @a[tag=merchant.player] run return run function merchant/during/small_game_over

# title @a[tag=play.total] title ["\u00a7b\u00a7lGame Total"]
# title @a[tag=play.total] title ["\u00a7a\u00a7lGame Total"]

scoreboard players set total.a.hastarted board 0
scoreboard players set total.b.hastarted board 0

scoreboard players set gametotal state 1

tellraw @a[tag=play.total] ["\n\u00a7e\u00a7l即将选择下一轮小游戏\n"]
title @a[tag=play.total] subtitle ["\u00a7e\u00a7l即将选择下一轮小游戏"]
execute as @a[tag=play.total] run scoreboard players operation @s globle.game = game.total globle.game
execute in overworld run tp @a[tag=play.total] 322 89 159 180 0
team join play.total @a[tag=play.total]
execute as @a[tag=play.total] at @s run playsound entity.experience_orb.pickup player @s
gamemode adventure @a[tag=play.total]
effect give @a[tag=play.total] resistance 2 25 true
effect give @a[tag=play.total] instant_health 2 25 true
effect give @a[tag=play.total] slow_falling 1 25 true
schedule function small_games/total/ready_next_game 3s replace