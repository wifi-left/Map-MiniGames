##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar set surgame:time players
bossbar set minecraft:battle players
bossbar set minecraft:boom players
bossbar set minigames:bedwars players
bossbar set minecraft:golf players
bossbar set minecraft:hideseek players
bossbar set minecraft:hideseek2 players
bossbar set minecraft:live players
# bossbar set minecraft: players

tag @a[tag=play.total] remove surback
tag @a[tag=play.total] remove tmp
tag @a[tag=play.total] remove bw.player

clear @a[tag=play.total]
effect clear @a[tag=play.total]

gamemode spectator @a[tag=play.total]

execute if entity @a[tag=merchant.player] run return run function merchant/during/small_game_over

# title @a[tag=play.total] title ["\u00a7b\u00a7lGame Total"]
# title @a[tag=play.total] title ["\u00a7a\u00a7lGame Total"]

title @a[tag=play.total] actionbar ["\u00a7e\u00a7l即将选择下一个小游戏"]

tp @a[tag=play.total] 286 90 139 -90 0
team join play.total @a[tag=play.total]
execute as @a[tag=play.total] at @s run playsound entity.experience_orb.pickup player @s
schedule function small_games/total/get_random_game 5s